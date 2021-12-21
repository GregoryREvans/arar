import pathlib

import abjad
import baca
import evans

from arar.materials.pitch import flute_pitch_handler_one, guitar_pitch_handler_one
from arar.materials.score_structure.instruments import instruments as insts
from arar.materials.score_structure.score_structure import score
from arar.materials.score_structure.segment_01.time_signatures import time_signatures
from arar.materials.timespans.segment_01.convert_timespans import rhythm_commands


def flat_gliss(selections):
    gliss_handler = evans.GlissandoHandler(
        glissando_style="hide_middle_note_heads",
        boolean_vector=[1],
        forget=False,
        apply_to="runs",
    )
    leaves = abjad.Selection(selections).leaves()
    for run in abjad.Selection(selections).runs():
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


tremolo_types = evans.CyclicList(
    ["bis.", "bis.", "ras.", "norm.", "ras.", "tamb.", "ras.", "ras."],
    forget=False,
)


def add_trem_name(selections):
    for run in abjad.Selection(selections).runs():
        leaf_1 = abjad.Selection(run).leaf(0)
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

section_title = abjad.Markup(
    r"""\markup { \box \override #'(font-name . "STIXGeneral Bold") \caps Introduction}""",
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
        "skips",
        evans.call(
            "Voice 1",
            flute_pitch_handler_one,
            lambda _: abjad.Selection(_),
        ),
        evans.call(
            "Voice 2",
            guitar_pitch_handler_one,
            lambda _: abjad.Selection(_),
        ),
        evans.call(
            "Voice 1",
            flat_gliss,
            lambda _: abjad.Selection(_).leaves(pitched=True).get([0, 1]),
        ),
        evans.call(
            "Voice 1",
            flat_gliss,
            lambda _: abjad.Selection(_).leaves(pitched=True).get([2, 3]),
        ),
        evans.call(
            "Voice 1",
            flat_gliss,
            lambda _: abjad.Selection(_).leaves(pitched=True).get([4, 5]),
        ),
        evans.call(
            "Voice 1",
            flat_gliss,
            lambda _: abjad.Selection(_).leaves(pitched=True).get([6, 7]),
        ),
        evans.call(
            "Voice 1",
            flat_gliss,
            lambda _: abjad.Selection(_).leaves(pitched=True).get([8, 9]),
        ),
        evans.call(
            "Voice 1",
            flat_gliss,
            lambda _: abjad.Selection(_).leaves(pitched=True).get([10, 11]),
        ),
        evans.call(
            "Voice 1",
            flat_gliss,
            lambda _: abjad.Selection(_).leaves(pitched=True).get([12, 13]),
        ),
        evans.call(
            "Voice 1",
            flat_gliss,
            lambda _: abjad.Selection(_).leaves(pitched=True).get([14, 15]),
        ),
        evans.call(
            "Voice 1",
            flat_gliss,
            lambda _: abjad.Selection(_).leaves(pitched=True).get([16, 17]),
        ),
        evans.call(
            "Voice 1",
            flat_gliss,
            lambda _: abjad.Selection(_).leaves(pitched=True).get([18, 19]),
        ),
        evans.call(
            "Voice 1",
            flat_gliss,
            lambda _: abjad.Selection(_).leaves(pitched=True).get([20, 21]),
        ),
        evans.call(
            "Voice 1",
            flat_gliss,
            lambda _: abjad.Selection(_).leaves(pitched=True).get([22, 23]),
        ),
        evans.call(
            "Voice 1",
            flat_gliss,
            lambda _: abjad.Selection(_).leaves(pitched=True).get([24, 25]),
        ),
        evans.call(
            "Voice 1",
            flat_gliss,
            lambda _: abjad.Selection(_).leaves(pitched=True).get([26, 27]),
        ),
        evans.call(
            "Voice 1",
            flat_gliss,
            lambda _: abjad.Selection(_).leaves(pitched=True).get([28, 29]),
        ),
        evans.call(
            "Voice 1",
            flat_gliss,
            lambda _: abjad.Selection(_).leaves(pitched=True).get([30, 31]),
        ),
        evans.call(
            "Voice 2",
            flat_gliss,
            lambda _: abjad.Selection(_),
        ),
        evans.call(
            "score",
            evans.ArticulationHandler(["tremolo"]),
            lambda _: abjad.Selection(_),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("pp"),
            lambda _: abjad.Selection(_).leaf(0, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<|"),
            lambda _: abjad.Selection(_).leaf(0, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            lambda _: abjad.Selection(_).leaf(1, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            lambda _: abjad.Selection(_).leaf(2, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<|"),
            lambda _: abjad.Selection(_).leaf(2, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("f"),
            lambda _: abjad.Selection(_).leaf(3, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mp"),
            lambda _: abjad.Selection(_).leaf(4, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<|"),
            lambda _: abjad.Selection(_).leaf(4, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mf"),
            lambda _: abjad.Selection(_).leaf(5, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            lambda _: abjad.Selection(_).leaf(6, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<|"),
            lambda _: abjad.Selection(_).leaf(6, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("f"),
            lambda _: abjad.Selection(_).leaf(7, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("pp"),
            lambda _: abjad.Selection(_).leaf(8, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<|"),
            lambda _: abjad.Selection(_).leaf(8, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            lambda _: abjad.Selection(_).leaf(9, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("f"),
            lambda _: abjad.Selection(_).leaf(10, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            lambda _: abjad.Selection(_).leaf(10, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            lambda _: abjad.Selection(_).leaf(11, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            lambda _: abjad.Selection(_).leaf(12, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            lambda _: abjad.Selection(_).leaf(12, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            lambda _: abjad.Selection(_).leaf(13, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("f"),
            lambda _: abjad.Selection(_).leaf(14, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            lambda _: abjad.Selection(_).leaf(14, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            lambda _: abjad.Selection(_).leaf(15, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mf"),
            lambda _: abjad.Selection(_).leaf(16, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            lambda _: abjad.Selection(_).leaf(16, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            lambda _: abjad.Selection(_).leaf(17, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mp"),
            lambda _: abjad.Selection(_).leaf(18, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            lambda _: abjad.Selection(_).leaf(18, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            lambda _: abjad.Selection(_).leaf(19, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            lambda _: abjad.Selection(_).leaf(20, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("|>"),
            lambda _: abjad.Selection(_).leaf(20, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mp"),
            lambda _: abjad.Selection(_).leaf(21, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            lambda _: abjad.Selection(_).leaf(22, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<|"),
            lambda _: abjad.Selection(_).leaf(22, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("f"),
            lambda _: abjad.Selection(_).leaf(23, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            lambda _: abjad.Selection(_).leaf(24, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("|>"),
            lambda _: abjad.Selection(_).leaf(24, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mp"),
            lambda _: abjad.Selection(_).leaf(25, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            lambda _: abjad.Selection(_).leaf(26, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<|"),
            lambda _: abjad.Selection(_).leaf(26, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("f"),
            lambda _: abjad.Selection(_).leaf(27, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            lambda _: abjad.Selection(_).leaf(28, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("|>"),
            lambda _: abjad.Selection(_).leaf(28, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mp"),
            lambda _: abjad.Selection(_).leaf(29, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            lambda _: abjad.Selection(_).leaf(30, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<|"),
            lambda _: abjad.Selection(_).leaf(30, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("f"),
            lambda _: abjad.Selection(_).leaf(31, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("p"),
            lambda _: abjad.Selection(_).leaf(0, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartHairpin("<"),
            lambda _: abjad.Selection(_).leaf(0, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("f"),
            lambda _: abjad.Selection(_).leaf(1, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartHairpin(">"),
            lambda _: abjad.Selection(_).leaf(1, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("p"),
            lambda _: abjad.Selection(_).leaf(2, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("p"),
            lambda _: abjad.Selection(_).leaf(3, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartHairpin("<"),
            lambda _: abjad.Selection(_).leaf(3, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("f"),
            lambda _: abjad.Selection(_).leaf(4, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartHairpin("--"),
            lambda _: abjad.Selection(_).leaf(4, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartHairpin(">"),
            lambda _: abjad.Selection(_).leaf(5, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("p"),
            lambda _: abjad.Selection(_).leaf(6, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("mf"),
            lambda _: abjad.Selection(_).leaf(7, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartHairpin("--"),
            lambda _: abjad.Selection(_).leaf(7, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.StopHairpin(),
            lambda _: abjad.Selection(_).leaf(18),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("p"),
            lambda _: abjad.Selection(_).leaf(10, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartHairpin("<"),
            lambda _: abjad.Selection(_).leaf(10, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("f"),
            lambda _: abjad.Selection(_).leaf(11, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartHairpin("--"),
            lambda _: abjad.Selection(_).leaf(11, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartHairpin("<"),
            lambda _: abjad.Selection(_).leaf(13, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("ff"),
            lambda _: abjad.Selection(_).leaf(14, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("sfp"),
            lambda _: abjad.Selection(_).leaf(15, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartHairpin("--"),
            lambda _: abjad.Selection(_).leaf(15, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.StopHairpin(),
            lambda _: abjad.Selection(_).leaf(29),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("mp"),
            lambda _: abjad.Selection(_).leaf(17, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartHairpin("<"),
            lambda _: abjad.Selection(_).leaf(17, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("ff"),
            lambda _: abjad.Selection(_).leaf(18, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartHairpin("|>"),
            lambda _: abjad.Selection(_).leaf(18, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("p"),
            lambda _: abjad.Selection(_).leaf(19, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("pp"),
            lambda _: abjad.Selection(_).leaf(20, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartHairpin("<|"),
            lambda _: abjad.Selection(_).leaf(20, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("ff"),
            lambda _: abjad.Selection(_).leaf(21, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartHairpin("--"),
            lambda _: abjad.Selection(_).leaf(21, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartHairpin(">"),
            lambda _: abjad.Selection(_).leaf(22, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("mf"),
            lambda _: abjad.Selection(_).leaf(23, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("sfp"),
            lambda _: abjad.Selection(_).leaf(24, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartHairpin("--"),
            lambda _: abjad.Selection(_).leaf(24, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.StopHairpin(),
            lambda _: abjad.Selection(_).leaf(46),
        ),
        evans.call(
            "Voice 2",
            add_trem_name,
            lambda _: abjad.Selection(_),
        ),
        evans.attach(
            "Global Context",
            section_title,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            mark_135,
            baca.selectors.leaf(0),
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
    segment_name="segment_01",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    mm_rests=False,
    barline="||",
    tempo=((1, 4), 135),
    rehearsal_mark="",
    page_break_counts=[90],
)

maker.build_segment()
# maker._make_sc_file()
