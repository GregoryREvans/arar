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
    for tuplet in abjad.Selection(selections).components(abjad.Tuplet):
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
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        "skips",
        evans.call(
            "Voice 1",
            flute_pitch_handler_eight,
            lambda _: abjad.Selection(_),
        ),
        evans.call(
            "Voice 2",
            guitar_pitch_handler_eight,
            lambda _: abjad.Selection(_),
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
        #                 rmakers.trivialize(lambda _: abjad.Selection(_).tuplets()),
        #                 rmakers.extract_trivial(lambda _: abjad.Selection(_).tuplets()),
        #                 rmakers.rewrite_rest_filled(lambda _: abjad.Selection(_).tuplets()),
        #                 rmakers.rewrite_sustained(lambda _: abjad.Selection(_).tuplets()),
        #             ),
        #             forget=False,
        #         ),
        #         direction=abjad.Down,
        #     ),
        #     lambda _: abjad.Selection(_).leaves().get([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]),
        # ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(0, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(0, pitched=True),
        ),
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartSlur(),
            baca.selectors.leaf(0, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopSlur(),
            baca.selectors.leaf(6, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartSlur(),
            baca.selectors.leaf(7, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopSlur(),
            baca.selectors.leaf(11, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartSlur(),
            baca.selectors.leaf(12, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopSlur(),
            baca.selectors.leaf(15, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartSlur(),
            baca.selectors.leaf(19, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopSlur(),
            baca.selectors.leaf(25, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartSlur(),
            baca.selectors.leaf(26, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopSlur(),
            baca.selectors.leaf(30, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartSlur(),
            baca.selectors.leaf(31, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopSlur(),
            baca.selectors.leaf(34, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartSlur(),
            baca.selectors.leaf(35, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopSlur(),
            baca.selectors.leaf(36, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartSlur(),
            baca.selectors.leaf(37, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopSlur(),
            baca.selectors.leaf(40, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartSlur(),
            baca.selectors.leaf(41, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopSlur(),
            baca.selectors.leaf(49, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartSlur(),
            baca.selectors.leaf(50, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopSlur(),
            baca.selectors.leaf(53, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartSlur(),
            baca.selectors.leaf(54, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopSlur(),
            baca.selectors.leaf(55, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartSlur(),
            baca.selectors.leaf(56, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopSlur(),
            baca.selectors.leaf(67, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartSlur(),
            baca.selectors.leaf(68, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopSlur(),
            baca.selectors.leaf(73, pitched=True),
        ),
        evans.attach(
            "Global Context",
            section_title,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            mark_70,
            baca.selectors.leaf(0),
        ),
    ],
    score_template=score,
    time_signatures=time_signatures,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=True,
    score_includes=[
        "/Users/gregoryevans/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/gregoryevans/Scores/arar/arar/build/first_stylesheet.ily",
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
