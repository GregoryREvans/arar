import pathlib

import abjad
import baca
import evans

from arar.materials.pitch import flute_pitch_handler_one, guitar_pitch_handler_five
from arar.materials.score_structure.instruments import instruments as insts
from arar.materials.score_structure.score_structure import score
from arar.materials.score_structure.segment_05.time_signatures import time_signatures
from arar.materials.timespans.segment_05.convert_timespans import (  # handler_commands,
    rhythm_commands,
)


def add_staccato(selections):
    for leaf in abjad.select(selections).leaves(pitched=True):
        abjad.attach(abjad.Articulation("staccato"), leaf)


met_150 = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 150)
mark_150 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \huge",
        r"  \concat {",
        f"      {str(met_150)[8:]}",
        r"  }",
        r"}",
    ],
    format_slot="after",
)

section_title = abjad.Markup(
    r"""\markup { \box \override #'(font-name . "STIXGeneral Bold") \caps D}""",
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
        # evans.call(
        #     "score",
        #     evans.SegmentMaker.transform_brackets,
        #     abjad.select().components(abjad.Score),
        # ),
        # evans.call(
        #     "score",
        #     evans.SegmentMaker.rewrite_meter,
        #     abjad.select().components(abjad.Score),
        # ),
        "skips",
        # handler_commands,
        # evans.call(
        #     "vertical",
        #     global_pitch_handler,
        #     evans.return_vertical_moment_ties,
        # ),
        evans.call(
            "Voice 1",
            flute_pitch_handler_one,
            abjad.select(),
        ),
        evans.call(
            "Voice 2",
            guitar_pitch_handler_five,
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
        # evans.call(
        #     "score",
        #     evans.SegmentMaker.beam_score,
        #     abjad.select().components(abjad.Score),
        # ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("p"),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 2",
            abjad.Glissando(),
            baca.leaf(4),
        ),
        evans.attach(
            "Voice 2",
            abjad.Glissando(),
            baca.leaf(9),
        ),
        evans.attach(
            "Voice 2",
            abjad.Glissando(),
            baca.leaf(14),
        ),
        evans.attach(
            "Voice 2",
            abjad.Glissando(),
            baca.leaf(19),
        ),
        evans.attach(
            "Voice 2",
            abjad.Glissando(),
            baca.leaf(24),
        ),
        evans.attach(
            "Voice 2",
            abjad.Glissando(),
            baca.leaf(27),
        ),
        evans.attach(
            "Voice 2",
            abjad.Glissando(),
            baca.leaf(34),
        ),
        evans.attach(
            "Voice 2",
            abjad.Glissando(),
            baca.leaf(39),
        ),
        evans.attach(
            "Voice 2",
            abjad.Glissando(),
            baca.leaf(44),
        ),
        evans.attach(
            "Voice 2",
            abjad.Glissando(),
            baca.leaf(49),
        ),
        evans.attach(
            "Voice 2",
            abjad.Glissando(),
            baca.leaf(54),
        ),
        evans.call(
            "Voice 2",
            add_staccato,
            abjad.select(),
        ),
        evans.attach(
            "Voice 1",
            abjad.Glissando(),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("f"),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mp"),
            baca.leaf(1),
        ),
        evans.attach(
            "Voice 1",
            abjad.Glissando(),
            baca.leaf(2),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mf"),
            baca.leaf(2),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            baca.leaf(2),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.leaf(3),
        ),
        evans.attach(
            "Voice 1",
            abjad.Glissando(),
            baca.leaf(4),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mp"),
            baca.leaf(4),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            baca.leaf(4),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("pp"),
            baca.leaf(5),
        ),
        evans.attach(
            "Voice 1",
            abjad.Glissando(),
            baca.leaf(6),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("f"),
            baca.leaf(6),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            baca.leaf(6),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mp"),
            baca.leaf(7),
        ),
        evans.attach(
            "Voice 1",
            abjad.Glissando(),
            baca.leaf(8),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mf"),
            baca.leaf(8),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            baca.leaf(8),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.leaf(9),
        ),
        evans.attach(
            "Voice 1",
            abjad.Glissando(),
            baca.leaf(10),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mp"),
            baca.leaf(10),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            baca.leaf(10),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("pp"),
            baca.leaf(11),
        ),
        evans.attach(
            "Voice 1",
            abjad.Glissando(),
            baca.leaf(12),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("f"),
            baca.leaf(12),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            baca.leaf(12),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mp"),
            baca.leaf(13),
        ),
        evans.attach(
            "Voice 1",
            abjad.Glissando(),
            baca.leaf(14),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mf"),
            baca.leaf(14),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            baca.leaf(14),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.leaf(15),
        ),
        evans.attach(
            "Voice 1",
            abjad.Glissando(),
            baca.leaf(16),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mp"),
            baca.leaf(16),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<|"),
            baca.leaf(16),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            baca.leaf(17),
        ),
        evans.attach(
            "Voice 2",
            abjad.Markup(
                r"\markup {detune string 4}",
                direction=abjad.Up,
                literal=True,
            ),
            baca.leaf(4),
        ),
        evans.attach(
            "Voice 2",
            abjad.Markup(
                r"\markup {keep scord.}",
                direction=abjad.Up,
                literal=True,
            ),
            baca.leaf(-7),
        ),
        evans.attach(
            "Global Context",
            section_title,
            baca.leaf(0),
        ),
        evans.attach(
            "Global Context",
            mark_150,
            baca.leaf(0),
        ),
    ],
    score_template=score,
    time_signatures=time_signatures,
    # clef_handlers=clef_handlers,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=True,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/arar/arar/build/first_stylesheet.ily",
    ],
    segment_name="segment_05",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=True,
    mm_rests=False,
    barline="||",
    tempo=((1, 4), 150),
    rehearsal_mark="",
    page_break_counts=[90],
)

maker.build_segment()
# maker._make_sc_file()
