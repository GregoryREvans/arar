import pathlib

import abjad
import baca
import evans

from arar.materials.pitch import flute_pitch_handler_two, guitar_pitch_handler_two
from arar.materials.score_structure.instruments import instruments as insts
from arar.materials.score_structure.score_structure import score
from arar.materials.score_structure.segment_02.time_signatures import time_signatures
from arar.materials.timespans.segment_02.convert_timespans import (  # handler_commands,
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


def hide_tuplet_bracket(selections):
    for tuplet in abjad.select(selections).components(abjad.Tuplet):
        tuplet.hide = True


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
            flute_pitch_handler_two,
            abjad.select(),
        ),
        evans.call(
            "Voice 2",
            guitar_pitch_handler_two,
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
            "Voice 1", flat_gliss, abjad.select().leaves(pitched=True).get([12, 13])
        ),
        evans.call(
            "Voice 1", flat_gliss, abjad.select().leaves(pitched=True).get([14, 15])
        ),
        evans.call(
            "Voice 1", flat_gliss, abjad.select().leaves(pitched=True).get([16, 17])
        ),
        evans.call(
            "Voice 1", flat_gliss, abjad.select().leaves(pitched=True).get([18, 19])
        ),
        evans.call(
            "Voice 1", flat_gliss, abjad.select().leaves(pitched=True).get([20, 21])
        ),
        evans.call(
            "Voice 1", flat_gliss, abjad.select().leaves(pitched=True).get([22, 23])
        ),
        evans.call(
            "Voice 1", flat_gliss, abjad.select().leaves(pitched=True).get([24, 25])
        ),
        evans.call("Voice 2", flat_gliss, abjad.select()),
        evans.attach("Voice 1", abjad.Dynamic("p"), baca.leaf(0)),
        evans.attach("Voice 2", abjad.Dynamic("p"), baca.leaf(0)),
        evans.attach("Voice 2", abjad.Articulation("accent"), baca.leaf(0)),
        evans.attach("Voice 2", abjad.Articulation("staccato"), baca.leaf(1)),
        evans.attach("Voice 2", abjad.Articulation("staccato"), baca.leaf(2)),
        evans.attach("Voice 2", abjad.Articulation("staccato"), baca.leaf(3)),
        evans.attach("Voice 2", abjad.Articulation("staccato"), baca.leaf(4)),
        evans.attach("Voice 2", abjad.Articulation("accent"), baca.leaf(5)),
        evans.attach("Voice 2", abjad.Articulation("staccato"), baca.leaf(6)),
        evans.attach("Voice 2", abjad.Articulation("staccato"), baca.leaf(7)),
        evans.attach("Voice 2", abjad.Articulation("staccato"), baca.leaf(8)),
        evans.attach("Voice 2", abjad.Articulation("accent"), baca.leaf(9)),
        evans.attach("Voice 2", abjad.Articulation("staccato"), baca.leaf(10)),
        evans.attach("Voice 2", abjad.Articulation("staccato"), baca.leaf(11)),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("f"),
            baca.leaf(12, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            baca.leaf(12, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.leaf(13, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            baca.leaf(14, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            baca.leaf(14, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.leaf(15, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("pp"),
            baca.leaf(16, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<|"),
            baca.leaf(16, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mf"),
            baca.leaf(17, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("pp"),
            baca.leaf(18, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<"),
            baca.leaf(18, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mf"),
            baca.leaf(19, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("pp"),
            baca.leaf(20, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<"),
            baca.leaf(20, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mp"),
            baca.leaf(21, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("pp"),
            baca.leaf(22, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<"),
            baca.leaf(22, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.leaf(23, pitched=True),
        ),
        # evans.attach(
        #     "Voice 1",
        #     abjad.Dynamic("ppp"),
        #     baca.leaf(24, pitched=True),
        # ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("o<"),
            baca.leaf(24, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mf"),
            baca.leaf(25, pitched=True),
        ),
        evans.call(
            "Voice 2",
            hide_tuplet_bracket,
            abjad.select().components(abjad.Tuplet).get([3]),
        ),
        evans.attach("Voice 2", abjad.Dynamic("f"), baca.leaf(12, pitched=True)),
        evans.attach("Voice 2", abjad.StartHairpin(">"), baca.leaf(12, pitched=True)),
        evans.attach("Voice 2", abjad.Dynamic("p"), baca.leaf(14, pitched=True)),
        evans.attach("Voice 2", abjad.Dynamic("f"), baca.leaf(15, pitched=True)),
        evans.attach("Voice 2", abjad.StartHairpin(">"), baca.leaf(15, pitched=True)),
        evans.attach("Voice 2", abjad.Dynamic("p"), baca.leaf(18, pitched=True)),
        evans.attach("Voice 2", abjad.Dynamic("pp"), baca.leaf(19, pitched=True)),
        evans.attach("Voice 2", abjad.StartHairpin("<"), baca.leaf(19, pitched=True)),
        evans.attach("Voice 2", abjad.Dynamic("ff"), baca.leaf(21, pitched=True)),
        evans.call(
            "Voice 2",
            evans.ArticulationHandler(["tremolo"]),
            abjad.select()
            .leaves(pitched=True)
            .get([12, 13, 14, 15, 16, 17, 18, 19, 20, 21]),
        ),
        evans.attach(
            "Voice 2",
            abjad.Markup(
                r"\markup {detune string 5}",
                direction=abjad.Up,
                literal=True,
            ),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 2",
            abjad.Markup(
                r"\markup {keep scord.}",
                direction=abjad.Up,
                literal=True,
            ),
            baca.leaf(10),
        ),
        evans.attach(
            "Global Context",
            section_title,
            baca.leaf(0),
        ),
        evans.attach(
            "Global Context",
            mark_98,
            baca.leaf(0),
        ),
        evans.attach(
            "Global Context",
            mark_135,
            baca.leaf(5),
        ),
        evans.attach(
            "Global Context",
            abjad.MetronomeMark((1, 4), 135),
            baca.leaf(5),
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
    segment_name="segment_02",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=True,
    mm_rests=False,
    barline="||",
    tempo=((1, 4), 98),
    rehearsal_mark="",
    page_break_counts=[90],
)

maker.build_segment()
# maker._make_sc_file()