import abjad
import evans
from abjadext import rmakers

silence_maker = rmakers.stack(
    rmakers.NoteRhythmMaker(),
    rmakers.force_rest(abjad.select().leaves(pitched=True)),
)

silence_handler = evans.RhythmHandler(
    rmaker=silence_maker,
    forget=True,
    name="silence_handler",
)

rmaker_one = rmakers.stack(
    evans.RTMMaker(
        [
            "(1 (1 (1 (-1 1)) -1 1))",
            "(1 (-2 2 -1 3))",
            "(1 (2 3 2 1))",
            "(1 (2 3 3))",
            "(1 (3 3 2))",
            "(1 (-1 1 1 -1))",
            "(1 (1 (1 (1 1 1 1)) 1))",
            "(1 ((1 (1 1 1 1)) 1 1))",
            "(1 (2 (1 (1 1 1 1)) 2))",
            "(1 ((1 (1 1 1 1)) 2 2))",
            "(1 (3 3 2 2 2))",
            "(1 (3 4 1 2 2))",
            "(1 (-2 3 2 2 2 1))",
            "(1 (-2 4 1 2 3))",
            "(1 (-2 5 2 2 1))",
        ]
    ),
    rmakers.trivialize(abjad.select().tuplets()),
    rmakers.extract_trivial(abjad.select().tuplets()),
    rmakers.rewrite_rest_filled(abjad.select().tuplets()),
    rmakers.rewrite_sustained(abjad.select().tuplets()),
)

rhythm_handler_one = evans.RhythmHandler(
    rmaker=rmaker_one,
    forget=False,
    name="rhythm_handler_one",
)

###
###

composite_handler_one = evans.CompositeHandler(
    rhythm_handler=evans.RhythmHandler(
        rmakers.stack(
            evans.RTMMaker(
                [
                    "(1 (1 1 1 1 1 1 1 1 1 1 1 1))",
                    "(1 ((1 (1 1 1)) (1 (1 1 1)) (1 (1 1 1)) (1 (1 1 1))))",
                    "(1 ((1 (1 1 1 1)) (1 (1 1 1 1)) (1 (1 1 1 1))))",
                ]
            ),
            rmakers.trivialize(abjad.select().tuplets()),
            rmakers.extract_trivial(abjad.select().tuplets()),
            rmakers.rewrite_rest_filled(abjad.select().tuplets()),
            rmakers.rewrite_sustained(abjad.select().tuplets()),
        ),
        forget=False,
    ),
    attachment_handlers=[
        evans.PitchHandler(
            [
                "af",
                "a''",
                "a''",
                "a''",
                "ef'",
                "a''",
                "a''",
                "a''",
                "d''",
                "a''",
                "a''",
                "a''",
            ],
            forget=False,
        ),
    ],
)
