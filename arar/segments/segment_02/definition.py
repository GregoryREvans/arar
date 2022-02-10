import pathlib

import abjad
import baca
import evans

from arar.materials.pitch import flute_pitch_handler_two, guitar_pitch_handler_two
from arar.materials.score_structure.instruments import instruments as insts
from arar.materials.score_structure.score_structure import score
from arar.materials.score_structure.segment_02.time_signatures import time_signatures
from arar.materials.timespans.segment_02.convert_timespans import rhythm_commands


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


def hide_tuplet_bracket(selections):
    for tuplet in abjad.Selection(selections).components(abjad.Tuplet):
        tuplet.hide = True


tremolo_types = evans.CyclicList(
    ["tamb.", "ras.", "ras."],
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


met_98 = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 98)
mark_98 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \huge",
        r"  \concat {",
        f"      {str(met_98)[8:]}",
        r"  }",
        r"}",
    ],
    format_slot="after",
)

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
    r"""\markup \box \override #'(font-name . "STIXGeneral Bold") \caps A""",
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
            flute_pitch_handler_two,
            lambda _: abjad.Selection(_),
        ),
        evans.call(
            "Voice 2",
            guitar_pitch_handler_two,
            lambda _: abjad.Selection(_),
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
        evans.call("Voice 2", flat_gliss, lambda _: abjad.Selection(_)),
        evans.attach(
            "Voice 1", abjad.Dynamic("p"), baca.selectors.leaf(0, pitched=True)
        ),
        evans.attach(
            "Voice 2", abjad.Dynamic("p"), baca.selectors.leaf(0, pitched=True)
        ),
        evans.attach("Voice 2", abjad.Articulation("accent"), baca.selectors.leaf(0)),
        evans.attach("Voice 2", abjad.Articulation("staccato"), baca.selectors.leaf(1)),
        evans.attach("Voice 2", abjad.Articulation("staccato"), baca.selectors.leaf(2)),
        evans.attach("Voice 2", abjad.Articulation("staccato"), baca.selectors.leaf(3)),
        evans.attach("Voice 2", abjad.Articulation("staccato"), baca.selectors.leaf(4)),
        evans.attach("Voice 2", abjad.Articulation("accent"), baca.selectors.leaf(5)),
        evans.attach("Voice 2", abjad.Articulation("staccato"), baca.selectors.leaf(6)),
        evans.attach("Voice 2", abjad.Articulation("staccato"), baca.selectors.leaf(7)),
        evans.attach("Voice 2", abjad.Articulation("staccato"), baca.selectors.leaf(8)),
        evans.attach("Voice 2", abjad.Articulation("accent"), baca.selectors.leaf(9)),
        evans.attach(
            "Voice 2", abjad.Articulation("staccato"), baca.selectors.leaf(10)
        ),
        evans.attach(
            "Voice 2", abjad.Articulation("staccato"), baca.selectors.leaf(11)
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("f"),
            baca.selectors.leaf(12, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            baca.selectors.leaf(12, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.selectors.leaf(13, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(14, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            baca.selectors.leaf(14, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.selectors.leaf(15, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("pp"),
            baca.selectors.leaf(16, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<|"),
            baca.selectors.leaf(16, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(17, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("pp"),
            baca.selectors.leaf(18, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(18, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(19, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("pp"),
            baca.selectors.leaf(20, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(20, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(21, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("pp"),
            baca.selectors.leaf(22, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(22, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.selectors.leaf(23, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("o<"),
            baca.selectors.leaf(24, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(25, pitched=True),
        ),
        evans.call(
            "Voice 2",
            hide_tuplet_bracket,
            lambda _: abjad.Selection(_).components(abjad.Tuplet).get([3]),
        ),
        evans.attach(
            "Voice 2", abjad.Dynamic("f"), baca.selectors.leaf(12, pitched=True)
        ),
        evans.attach(
            "Voice 2", abjad.StartHairpin(">"), baca.selectors.leaf(12, pitched=True)
        ),
        evans.attach(
            "Voice 2", abjad.Dynamic("p"), baca.selectors.leaf(14, pitched=True)
        ),
        evans.attach(
            "Voice 2", abjad.Dynamic("f"), baca.selectors.leaf(15, pitched=True)
        ),
        evans.attach(
            "Voice 2", abjad.StartHairpin(">"), baca.selectors.leaf(15, pitched=True)
        ),
        evans.attach(
            "Voice 2", abjad.Dynamic("p"), baca.selectors.leaf(18, pitched=True)
        ),
        evans.attach(
            "Voice 2", abjad.Dynamic("pp"), baca.selectors.leaf(19, pitched=True)
        ),
        evans.attach(
            "Voice 2", abjad.StartHairpin("<"), baca.selectors.leaf(19, pitched=True)
        ),
        evans.attach(
            "Voice 2", abjad.Dynamic("ff"), baca.selectors.leaf(21, pitched=True)
        ),
        evans.call(
            "Voice 2",
            evans.ArticulationHandler(["tremolo"]),
            lambda _: abjad.Selection(_)
            .leaves(pitched=True)
            .get([12, 13, 14, 15, 16, 17, 18, 19, 20, 21]),
        ),
        evans.attach(
            "Voice 2",
            abjad.Markup(
                r"\markup {detune string 5}",
                direction=abjad.Up,
            ),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 2",
            abjad.Markup(
                r"\markup {keep scord.}",
                direction=abjad.Up,
            ),
            baca.selectors.leaf(10),
        ),
        evans.call(
            "Voice 2", add_trem_name, lambda _: abjad.Selection(_).runs().get([1, 2, 3])
        ),
        evans.attach(
            "Global Context",
            section_title,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            mark_98,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            mark_135,
            baca.selectors.leaf(5),
        ),
        evans.attach(
            "Global Context",
            abjad.MetronomeMark((1, 4), 135),
            baca.selectors.leaf(5),
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
    segment_name="segment_02",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    mm_rests=False,
    barline="||",
    tempo=((1, 4), 98),
    rehearsal_mark="",
    page_break_counts=[90],
)

maker.build_segment()
# maker._make_sc_file()
