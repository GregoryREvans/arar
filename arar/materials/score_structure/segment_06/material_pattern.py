import abjad
import evans

from arar.materials.pitch import (
    flute_pitch_handler_one,
    flute_pitch_handler_six,
    flute_pitch_handler_three,
    guitar_pitch_handler_one,
    guitar_pitch_handler_six,
    guitar_pitch_handler_three,
)
from arar.materials.rhythm import (
    flute_rhythm_handler_one,
    flute_rhythm_handler_six,
    flute_rhythm_handler_three,
    guitar_rhythm_handler_one,
    guitar_rhythm_handler_six,
    guitar_rhythm_handler_three,
    silence_handler,
)

rhythm_material_list = [
    silence_handler,
    flute_rhythm_handler_six,
    flute_rhythm_handler_one,
    flute_rhythm_handler_three,
    flute_rhythm_handler_one,
    flute_rhythm_handler_six,
    guitar_rhythm_handler_six,
    silence_handler,
    guitar_rhythm_handler_one,
    guitar_rhythm_handler_three,
    guitar_rhythm_handler_six,
    guitar_rhythm_handler_three,
    guitar_rhythm_handler_six,
]

pitch_material_list = [
    flute_pitch_handler_six,
    flute_pitch_handler_one,
    flute_pitch_handler_three,
    flute_pitch_handler_one,
    flute_pitch_handler_six,
    guitar_pitch_handler_six,
    guitar_pitch_handler_one,
    guitar_pitch_handler_three,
    guitar_pitch_handler_six,
    guitar_pitch_handler_three,
    guitar_pitch_handler_six,
]


class FlatGlissMaker:
    def __init__(
        self,
    ):
        self._state = None
        self.name = None

    def __call__(self, selections):
        gliss_handler = evans.GlissandoHandler(
            glissando_style="hide_middle_note_heads",
            boolean_vector=[1],
            forget=False,
            apply_to="runs",
        )
        trem_handler = evans.ArticulationHandler(["tremolo"])
        leaves = abjad.select(selections).leaves()
        for run in abjad.select(selections).runs():
            if len(run) == 1:
                next_leaf = abjad.get.leaf(run[0], 1)
                next_next_leaf = abjad.get.leaf(next_leaf, 1)
                gliss_handler([run[0], next_leaf, next_next_leaf])
                trem_handler([run[0], next_leaf, next_next_leaf])
            if len(run) == 2:
                gliss_handler(run[:])
                trem_handler(run[:])
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

    def state(self):
        return self._state


flat_gliss = FlatGlissMaker()

trill_handler = evans.TrillHandler(boolean_vector=[1])

articulation_handler = evans.ArticulationHandler(
    ["accent"],
    articulation_boolean_vector=[0, 0, 0, 0, 0, 0, 1],
    forget=False,
)

attachment_material_list = [
    trill_handler,
    flat_gliss,
    articulation_handler,
    flat_gliss,
    trill_handler,
    trill_handler,
    flat_gliss,
    articulation_handler,
    trill_handler,
    articulation_handler,
    trill_handler,
]
