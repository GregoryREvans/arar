import pathlib

import abjad
import baca
import evans

from arar.materials.pitch import flute_pitch_handler_one, guitar_pitch_handler_one
from arar.materials.score_structure.instruments import instruments as insts
from arar.materials.score_structure.score_structure import score
from arar.materials.score_structure.segment_01.time_signatures import time_signatures
from arar.materials.timespans.segment_01.convert_timespans import (  # handler_commands,
    rhythm_commands,
)


def flat_gliss(selections):
    gliss_handler = evans.GlissandoHandler(
        glissando_style="hide_middle_note_heads",
        boolean_vector=[1],
        forget=False,
        apply_to="runs",
    )
    leaves = abjad.select(selections).leaves()
    for run in abjad.select(selections).runs():
        gliss_handler(run[:])
    for leaf in leaves:
        literal_1 = abjad.LilyPondLiteral(
            r"\once \override Staff.Tie.transparent = ##t",
            format_slot="before",
        )
        abjad.attach(literal_1, leaf)
        literal_2 = abjad.LilyPondLiteral(
            r"\once \override Dots.staff-position = #1.75",
            format_slot="before",
        )
        abjad.attach(literal_2, leaf)


met_135 = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 135)
mark_135 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \huge",
        r"  \concat {",
        f"      {str(met_135)[8:]}",
        r"  }",
        r"}",
    ],
    format_slot="after",
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
            evans.SegmentMaker.transform_brackets,
            abjad.select().components(abjad.Score),
        ),
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
            guitar_pitch_handler_one,
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
        evans.call(
            "Voice 1",
            flat_gliss,
            abjad.select().leaves(pitched=True).get([0, 1]),
        ),
        evans.call(
            "Voice 1",
            flat_gliss,
            abjad.select().leaves(pitched=True).get([2, 3]),
        ),
        evans.call(
            "Voice 1",
            flat_gliss,
            abjad.select().leaves(pitched=True).get([4, 5]),
        ),
        evans.call(
            "Voice 1",
            flat_gliss,
            abjad.select().leaves(pitched=True).get([6, 7]),
        ),
        evans.call(
            "Voice 1",
            flat_gliss,
            abjad.select().leaves(pitched=True).get([8, 9]),
        ),
        evans.call(
            "Voice 1",
            flat_gliss,
            abjad.select().leaves(pitched=True).get([10, 11]),
        ),
        evans.call(
            "Voice 1",
            flat_gliss,
            abjad.select().leaves(pitched=True).get([12, 13]),
        ),
        evans.call(
            "Voice 1",
            flat_gliss,
            abjad.select().leaves(pitched=True).get([14, 15]),
        ),
        evans.call(
            "Voice 1",
            flat_gliss,
            abjad.select().leaves(pitched=True).get([16, 17]),
        ),
        evans.call(
            "Voice 1",
            flat_gliss,
            abjad.select().leaves(pitched=True).get([18, 19]),
        ),
        evans.call(
            "Voice 1",
            flat_gliss,
            abjad.select().leaves(pitched=True).get([20, 21]),
        ),
        evans.call(
            "Voice 1",
            flat_gliss,
            abjad.select().leaves(pitched=True).get([22, 23]),
        ),
        evans.call(
            "Voice 1",
            flat_gliss,
            abjad.select().leaves(pitched=True).get([24, 25]),
        ),
        evans.call(
            "Voice 1",
            flat_gliss,
            abjad.select().leaves(pitched=True).get([26, 27]),
        ),
        evans.call(
            "Voice 1",
            flat_gliss,
            abjad.select().leaves(pitched=True).get([28, 29]),
        ),
        evans.call(
            "Voice 1",
            flat_gliss,
            abjad.select().leaves(pitched=True).get([30, 31]),
        ),
        evans.call(
            "Voice 2",
            flat_gliss,
            abjad.select(),
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(
                "Introduction",
                direction=abjad.Up,
            )
            .caps()
            .override(("font-name", "STIXGeneral Bold"))
            .box(),
            baca.leaf(0),
        ),
        evans.attach(
            "Global Context",
            mark_135,
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
    segment_name="segment_01",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=True,
    mm_rests=False,
    barline="||",
    tempo=((1, 4), 135),
    rehearsal_mark="",
    page_break_counts=[90],
)

maker.build_segment()
# maker._make_sc_file()
