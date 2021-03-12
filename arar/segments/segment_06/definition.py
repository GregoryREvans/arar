import pathlib

import abjad
import baca
import evans

from arar.materials.score_structure.instruments import instruments as insts
from arar.materials.score_structure.score_structure import score
from arar.materials.score_structure.segment_06.time_signatures import time_signatures
from arar.materials.timespans.segment_06.convert_timespans import (
    handler_commands,
    rhythm_commands,
)

tremolo_types = evans.CyclicList(
    ["bis."],
    forget=False,
)


def add_trem_name(selections):
    for run in abjad.select(selections).runs():
        leaf_1 = abjad.select(run).leaf(0)
        following_rest = abjad.get.leaf(run[-1], 1)
        type = tremolo_types(r=1)[0]
        start = abjad.StartTextSpan(
            left_text=abjad.Markup(fr"\upright {type}"),
            style="solid-line-with-hook",
        )
        abjad.tweak(start).staff_padding = 4.5
        stop = abjad.StopTextSpan()
        abjad.attach(start, leaf_1)
        abjad.attach(stop, following_rest)


met_80 = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 80)
mark_80 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \huge",
        r"  \concat {",
        f"      {str(met_80)[8:]}",
        r"  }",
        r"}",
    ],
    format_slot="after",
)

section_title = abjad.Markup(
    r"""\markup { \box \override #'(font-name . "STIXGeneral Bold") \caps E}""",
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
        handler_commands,
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            abjad.select().components(abjad.Score),
        ),
        evans.call("Voice 2", add_trem_name, abjad.select().runs().get([1, 2])),
        evans.attach("Voice 2", abjad.StopTextSpan(), abjad.select().run(2).leaf(3)),
        evans.attach(
            "Global Context",
            section_title,
            baca.leaf(0),
        ),
        evans.attach(
            "Global Context",
            mark_80,
            baca.leaf(0),
        ),
    ],
    score_template=score,
    time_signatures=time_signatures,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/arar/arar/build/first_stylesheet.ily",
    ],
    segment_name="segment_06",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    mm_rests=False,
    barline="||",
    tempo=((1, 4), 80),
    rehearsal_mark="",
    page_break_counts=[90],
)

maker.build_segment()
# maker._make_sc_file()
