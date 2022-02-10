import pathlib

import abjad
import baca
import evans

from arar.materials.pitch import flute_pitch_handler_three, guitar_pitch_handler_three
from arar.materials.score_structure.instruments import instruments as insts
from arar.materials.score_structure.score_structure import score
from arar.materials.score_structure.segment_03.time_signatures import time_signatures
from arar.materials.timespans.segment_03.convert_timespans import rhythm_commands


def hide_tuplet_bracket(selections):
    for tuplet in abjad.Selection(selections).components(abjad.Tuplet):
        tuplet.hide = True


met_85 = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 85)
mark_85 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \huge",
        r"  \concat {",
        f"      {str(met_85)[8:]}",
        r"  }",
        r"}",
    ],
    format_slot="after",
)

section_title = abjad.Markup(
    r"""\markup { \box \override #'(font-name . "STIXGeneral Bold") \caps B}""",
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
            flute_pitch_handler_three,
            lambda _: abjad.Selection(_),
        ),
        evans.call(
            "Voice 2",
            guitar_pitch_handler_three,
            lambda _: abjad.Selection(_),
        ),
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(0, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("f"),
            baca.selectors.leaf(6, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("--"),
            baca.selectors.leaf(6, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            baca.selectors.leaf(16, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.selectors.leaf(21, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("f"),
            baca.selectors.leaf(36, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(40, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("f"),
            baca.selectors.leaf(41, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.selectors.leaf(45, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(48, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.selectors.leaf(52, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(53, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.selectors.leaf(57, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("p"),
            baca.selectors.leaf(0, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("f"),
            baca.selectors.leaf(1, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(5, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(6, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(10, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("f"),
            baca.selectors.leaf(13, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(17, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(18, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("p"),
            baca.selectors.leaf(22, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(25, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("p"),
            baca.selectors.leaf(29, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(30, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("p"),
            baca.selectors.leaf(34, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("f"),
            baca.selectors.leaf(35, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("p"),
            baca.selectors.leaf(36, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("f"),
            baca.selectors.leaf(37, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(41, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("f"),
            baca.selectors.leaf(42, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("p"),
            baca.selectors.leaf(45, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartSlur(),
            baca.selectors.leaf(6, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopSlur(),
            baca.selectors.leaf(9, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartSlur(),
            baca.selectors.leaf(10, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopSlur(),
            baca.selectors.leaf(15, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartSlur(),
            baca.selectors.leaf(16, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopSlur(),
            baca.selectors.leaf(20, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartSlur(),
            baca.selectors.leaf(36, pitched=True),
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
            baca.selectors.leaf(45, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartSlur(),
            baca.selectors.leaf(48, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopSlur(),
            baca.selectors.leaf(52, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartSlur(),
            baca.selectors.leaf(53, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopSlur(),
            baca.selectors.leaf(57, pitched=True),
        ),
        evans.attach(
            "Global Context",
            section_title,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            mark_85,
            baca.selectors.leaf(0),
        ),
    ],
    score_template=score,
    time_signatures=time_signatures,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "/Users/gregoryevans/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/gregoryevans/Scores/arar/arar/build/first_stylesheet.ily",
    ],
    segment_name="segment_03",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    mm_rests=False,
    barline="||",
    tempo=((1, 4), 85),
    rehearsal_mark="",
    page_break_counts=[90],
)

maker.build_segment()
# maker._make_sc_file()
