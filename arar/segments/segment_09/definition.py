import pathlib

import abjad
import baca
import evans

from arar.materials.pitch import flute_pitch_handler_eight, guitar_pitch_handler_eight
from arar.materials.score_structure.instruments import instruments as insts
from arar.materials.score_structure.score_structure import score
from arar.materials.score_structure.segment_09.time_signatures import time_signatures
from arar.materials.timespans.segment_09.convert_timespans import rhythm_commands

c = abjad.LilyPondLiteral(
    [
        r"""_ \markup {""",
        r"""    \override #'(font-name . "STIXGeneral")""",
        r"""    \with-color #white""",
        r"""    \right-column {""",
        r"""        \line { "\hspace #0.75 ............" }""",
        r"""        \with-color #black""",
        r"""        \line { \hspace #0.75 Iowa City, Ia. }""",
        r"""        \with-color #black""",
        r"""        \line { \hspace #0.75 January - March 2021 }""",
        r"""    }""",
        r"""}""",
    ],
    format_slot="absolute_after",
)


def hide_tuplet_bracket(selections):
    for tuplet in abjad.select(selections).components(abjad.Tuplet):
        tuplet.hide = True


met_70 = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 70)
mark_70 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \huge",
        r"  \concat {",
        f"      {str(met_70)[8:]}",
        r"  }",
        r"}",
    ],
    format_slot="after",
)

section_title = abjad.Markup(
    r"""\markup { \box \override #'(font-name . "STIXGeneral Bold") \caps H}""",
    direction=abjad.Up,
    literal=True,
)

maker = evans.SegmentMaker(
    instruments=insts,
    names=[
        '"Bass Flute"',
        '"Guitar"',
    ],
    abbreviations=[
        '"bf."',
        '"gt."',
    ],
    name_staves=True,
    commands=[
        rhythm_commands,
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            abjad.select().components(abjad.Score),
        ),
        "skips",
        evans.call(
            "Voice 1",
            flute_pitch_handler_eight,
            abjad.select(),
        ),
        evans.call(
            "Voice 2",
            guitar_pitch_handler_eight,
            abjad.select(),
        ),
        # evans.call(
        #     "Voice 2",
        #     evans.IntermittentVoiceHandler(
        #         evans.RhythmHandler(
        #             rmakers.stack(
        #                 evans.RTMMaker(
        #                     [
        #                         "(1 (1 1 1))",
        #                     ]
        #                 ),
        #                 rmakers.trivialize(abjad.select().tuplets()),
        #                 rmakers.extract_trivial(abjad.select().tuplets()),
        #                 rmakers.rewrite_rest_filled(abjad.select().tuplets()),
        #                 rmakers.rewrite_sustained(abjad.select().tuplets()),
        #             ),
        #             forget=False,
        #         ),
        #         direction=abjad.Down,
        #     ),
        #     abjad.select().leaves().get([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]),
        # ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            baca.leaf(0, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("ff"),
            baca.leaf(0, pitched=True),
        ),
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            abjad.select().components(abjad.Score),
        ),
        evans.attach(
            "Global Context",
            section_title,
            baca.leaf(0),
        ),
        evans.attach(
            "Global Context",
            mark_70,
            baca.leaf(0),
        ),
    ],
    score_template=score,
    time_signatures=time_signatures,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=True,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/arar/arar/build/first_stylesheet.ily",
    ],
    segment_name="segment_09",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    mm_rests=False,
    barline="|.",
    tempo=((1, 4), 70),
    rehearsal_mark="",
    page_break_counts=[90],
    fermata="scripts.uverylongfermata",
    colophon=c,
)

maker.build_segment()
# maker._make_sc_file()
