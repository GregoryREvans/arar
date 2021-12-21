import pathlib

import abjad
import baca
import evans

from arar.materials.score_structure.instruments import instruments as insts
from arar.materials.score_structure.score_structure import score
from arar.materials.score_structure.segment_08.time_signatures import time_signatures
from arar.materials.timespans.segment_08.convert_timespans import (
    handler_commands,
    rhythm_commands,
)


def add_staccato(selections):
    for leaf in abjad.Selection(selections).leaves(pitched=True):
        abjad.attach(abjad.Articulation("staccato"), leaf)


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


met_106 = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 106)
mark_106 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \huge",
        r"  \concat {",
        f"      {str(met_106)[8:]}",
        r"  }",
        r"}",
    ],
    format_slot="after",
)

section_title = abjad.Markup(
    r"""\markup { \box \override #'(font-name . "STIXGeneral Bold") \caps G}""",
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
        handler_commands,
        evans.attach(
            "Voice 2",
            abjad.StopTextSpan(),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartBeam(),
            baca.selectors.leaf(20, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopBeam(),
            baca.selectors.leaf(21, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartBeam(),
            baca.selectors.leaf(22, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopBeam(),
            baca.selectors.leaf(25, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartBeam(),
            baca.selectors.leaf(26, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopBeam(),
            baca.selectors.leaf(31, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartBeam(),
            baca.selectors.leaf(32, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopBeam(),
            baca.selectors.leaf(36, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartBeam(),
            baca.selectors.leaf(17, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.StopBeam(),
            baca.selectors.leaf(20, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartBeam(),
            baca.selectors.leaf(22, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.StopBeam(),
            baca.selectors.leaf(25, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartBeam(),
            baca.selectors.leaf(29, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.StopBeam(),
            baca.selectors.leaf(32, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartBeam(),
            baca.selectors.leaf(34, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.StopBeam(),
            baca.selectors.leaf(37, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartBeam(),
            baca.selectors.leaf(41, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.StopBeam(),
            baca.selectors.leaf(44, pitched=True),
        ),
        evans.attach(
            "Voice 2", abjad.Dynamic("p"), baca.selectors.leaf(0, pitched=True)
        ),
        evans.attach(
            "Voice 2",
            abjad.Markup(r"""\markup "detune string 1" """, direction=abjad.Up),
            baca.selectors.leaf(0, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Markup(r"""\markup "keep scord." """, direction=abjad.Up),
            baca.selectors.leaf(15, pitched=True),
        ),
        evans.call(
            "Voice 2",
            flat_gliss,
            lambda _: abjad.Selection(_)
            .leaves(pitched=True)
            .get([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]),
        ),
        evans.call(
            "Voice 2",
            add_staccato,
            lambda _: abjad.Selection(_)
            .leaves(pitched=True)
            .get([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(16, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(22, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("f"),
            baca.selectors.leaf(26, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(29, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(34, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(38, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("f"),
            baca.selectors.leaf(41, pitched=True),
        ),
        evans.attach(
            "Voice 2", abjad.Dynamic("p"), baca.selectors.leaf(46, pitched=True)
        ),
        evans.attach(
            "Voice 2",
            abjad.Markup(r"""\markup "detune string 2" """, direction=abjad.Up),
            baca.selectors.leaf(46, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Markup(r"""\markup "keep scord." """, direction=abjad.Up),
            baca.selectors.leaf(55, pitched=True),
        ),
        evans.call(
            "Voice 2",
            flat_gliss,
            lambda _: abjad.Selection(_)
            .leaves(pitched=True)
            .get([46, 47, 48, 49, 50, 51, 52, 53, 54, 55]),
        ),
        evans.call(
            "Voice 2",
            add_staccato,
            lambda _: abjad.Selection(_)
            .leaves(pitched=True)
            .get([46, 47, 48, 49, 50, 51, 52, 53, 54, 55]),
        ),
        evans.attach(
            "Voice 2", abjad.Dynamic("p"), baca.selectors.leaf(56, pitched=True)
        ),
        evans.attach(
            "Voice 2",
            abjad.Markup(r"""\markup "detune string 3" """, direction=abjad.Up),
            baca.selectors.leaf(56, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Markup(r"""\markup "keep scord." """, direction=abjad.Up),
            baca.selectors.leaf(73, pitched=True),
        ),
        evans.call(
            "Voice 2",
            flat_gliss,
            lambda _: abjad.Selection(_)
            .leaves(pitched=True)
            .get(
                [56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73]
            ),
        ),
        evans.call(
            "Voice 2",
            add_staccato,
            lambda _: abjad.Selection(_)
            .leaves(pitched=True)
            .get(
                [56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73]
            ),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.selectors.leaf(0, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(16, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(22, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(37, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.selectors.leaf(45, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.selectors.leaf(55, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartSlur(),
            baca.selectors.leaf(22, pitched=True),
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
            baca.selectors.leaf(31, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartSlur(),
            baca.selectors.leaf(32, pitched=True),
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
            baca.selectors.leaf(41, pitched=True),
        ),
        evans.attach(
            "Global Context",
            section_title,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            mark_106,
            baca.selectors.leaf(0),
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
    segment_name="segment_08",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    mm_rests=False,
    barline="||",
    tempo=((1, 4), 106),
    rehearsal_mark="",
    page_break_counts=[90],
)

maker.build_segment()
# maker._make_sc_file()
