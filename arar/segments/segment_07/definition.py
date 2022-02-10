import pathlib

import abjad
import baca
import evans

from arar.materials.pitch import flute_pitch_handler_one, guitar_pitch_handler_one
from arar.materials.score_structure.instruments import instruments as insts
from arar.materials.score_structure.score_structure import score
from arar.materials.score_structure.segment_07.time_signatures import time_signatures
from arar.materials.timespans.segment_07.convert_timespans import rhythm_commands


def flat_gliss(selections):
    gliss_handler = evans.GlissandoHandler(
        glissando_style="hide_middle_note_heads",
        boolean_vector=[1],
        forget=False,
        apply_to="runs",
    )
    tremolo_handler = evans.ArticulationHandler(
        ["tremolo"],
        forget=False,
    )
    leaves = abjad.Selection(selections).leaves()
    for run in abjad.Selection(selections).runs():
        gliss_handler(run[:])
        tremolo_handler(run[:])
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


def hide_tuplet_bracket(selections):
    for tuplet in abjad.Selection(selections).components(abjad.Tuplet):
        tuplet.hide = True


def attach_material(selections):
    leaves = abjad.Selection(selections).leaves(pitched=True)
    cyc_dynamics = evans.CyclicList(["pp", "f", "p", "mf", "mp", "mf"], forget=False)
    cyc_hairpins = evans.CyclicList(["<", ">"], forget=False)
    for leaf in leaves:
        dynamic = abjad.Dynamic(cyc_dynamics(r=1)[0])
        abjad.attach(dynamic, leaf)
    for leaf in leaves[:-1]:
        hairpin = abjad.StartHairpin(cyc_hairpins(r=1)[0])
        abjad.attach(hairpin, leaf)


tremolo_types = evans.CyclicList(
    ["ras.", "ras.", "tamb.", "tamb.", "norm.", "norm.", "bis.", "bis."],
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
    r"""\markup { \box \override #'(font-name . "STIXGeneral Bold") \caps F}""",
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
        evans.attach(
            "Voice 1",
            abjad.StopTrillSpan(),
            baca.selectors.leaf(0),
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
            attach_material,
            lambda _: abjad.Selection(_).runs(),
        ),
        evans.call(
            "Voice 2",
            flat_gliss,
            lambda _: abjad.Selection(_),
        ),
        evans.call(
            "Voice 2",
            attach_material,
            lambda _: abjad.Selection(_).runs().get([0]),
        ),
        evans.call(
            "Voice 2",
            attach_material,
            lambda _: abjad.Selection(_).runs().get([1]),
        ),
        evans.call(
            "Voice 2",
            attach_material,
            lambda _: abjad.Selection(_).runs().get([2]),
        ),
        evans.call(
            "Voice 2",
            attach_material,
            lambda _: abjad.Selection(_).runs().get([3]),
        ),
        evans.call(
            "Voice 2",
            attach_material,
            lambda _: abjad.Selection(_).runs().get([4]),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(-1, pitched=True),
        ),
        evans.call(
            "Voice 2",
            hide_tuplet_bracket,
            lambda _: abjad.Selection(_).components(abjad.Tuplet).get([2]),
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
        "/Users/gregoryevans/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/gregoryevans/Scores/arar/arar/build/first_stylesheet.ily",
    ],
    segment_name="segment_07",
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
