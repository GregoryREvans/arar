import pathlib

import abjad
import baca
import evans
from abjadext import rmakers

from arar.materials.pitch import pitch_handler_one
from arar.materials.score_structure.instruments import instruments as insts
from arar.materials.score_structure.score_structure import score
from arar.materials.score_structure.segment_01.time_signatures import time_signatures
from arar.materials.timespans.segment_01.convert_timespans import (  # handler_commands,
    rhythm_commands,
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
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            abjad.select().components(abjad.Score),
        ),
        "skips",
        # handler_commands,
        # evans.call(
        #     "vertical",
        #     global_pitch_handler,
        #     evans.return_vertical_moment_ties,
        # ),
        evans.call(
            "Voice 1",
            pitch_handler_one,
            abjad.select(),
        ),
        evans.call(
            "Voice 2",
            evans.IntermittentVoiceHandler(
                evans.RhythmHandler(
                    rmakers.stack(
                        evans.RTMMaker(
                            [
                                "(1 (1 1 1))",
                            ]
                        ),
                        rmakers.trivialize(abjad.select().tuplets()),
                        rmakers.extract_trivial(abjad.select().tuplets()),
                        rmakers.rewrite_rest_filled(abjad.select().tuplets()),
                        rmakers.rewrite_sustained(abjad.select().tuplets()),
                    ),
                    forget=False,
                ),
                direction=abjad.Down,
            ),
            abjad.select().leaves().get([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]),
        ),
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            abjad.select().components(abjad.Score),
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(
                "introduction",
                direction=abjad.Up,
            )
            .caps()
            .override(("font-name", "STIXGeneral Bold"))
            .box(),
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
    tempo=((1, 4), 115),
    rehearsal_mark="",
    page_break_counts=[90],
)

maker.build_segment()
# maker._make_sc_file()
