import abjad
import evans
from abjadext import rmakers

silence_maker = rmakers.stack(
    rmakers.NoteRhythmMaker(),
    rmakers.force_rest(lambda _: abjad.Selection(_).leaves(pitched=True)),
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
    rmakers.trivialize(lambda _: abjad.Selection(_).tuplets()),
    rmakers.extract_trivial(lambda _: abjad.Selection(_).tuplets()),
    rmakers.rewrite_rest_filled(lambda _: abjad.Selection(_).tuplets()),
    rmakers.rewrite_sustained(lambda _: abjad.Selection(_).tuplets()),
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
            rmakers.trivialize(lambda _: abjad.Selection(_).tuplets()),
            rmakers.extract_trivial(lambda _: abjad.Selection(_).tuplets()),
            rmakers.rewrite_rest_filled(lambda _: abjad.Selection(_).tuplets()),
            rmakers.rewrite_sustained(lambda _: abjad.Selection(_).tuplets()),
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

###
###

# flute_rmaker_one = rmakers.stack(
#     evans.RTMMaker(
#         [
#             "(1 (6 1))",
#             "(1 (3 1))",
#             "(1 (4 1))",
#             "(1 (3 1))",
#             "(1 (2 1))",
#             "(1 (6 1))",
#         ]
#     ),
#     rmakers.trivialize(lambda _: abjad.Selection(_).tuplets()),
#     rmakers.extract_trivial(lambda _: abjad.Selection(_).tuplets()),
#     rmakers.rewrite_rest_filled(lambda _: abjad.Selection(_).tuplets()),
#     rmakers.rewrite_sustained(lambda _: abjad.Selection(_).tuplets()),
# )

flute_rhythm_handler_one = evans.RhythmHandler(
    rmaker=evans.RTMMaker(
        [
            "(1 (6 1))",
            "(1 (3 1))",
            "(1 (4 1))",
            "(1 (3 1))",
            "(1 (2 1))",
            "(1 (6 1))",
        ]
    ),
    forget=False,
    name="flute_rhythm_handler_one",
)

guitar_rmaker_one = rmakers.stack(
    evans.RTMMaker(
        [
            "(1 (-3 12))",
            "(1 (8 3 -3))",
            "(1 (-3 14))",
            "(1 (1 1))",
            "(1 (12 -3))",
            "(1 (-3 16))",
            "(1 (12 3 -3))",
            "(1 (-3 12 2))",
            "(1 (9 4 -3))",
            "(1 (-3 4 2 -3))",
            "(1 (-3 14))",
            "(1 (8 3 -3))",
            "(1 (-3 14))",
            "(1 (1 1))",
            "(1 (12 -3))",
            "(1 (-3 4 2 -3))",
        ]
    ),
    rmakers.trivialize(lambda _: abjad.Selection(_).tuplets()),
    rmakers.extract_trivial(lambda _: abjad.Selection(_).tuplets()),
    rmakers.rewrite_rest_filled(lambda _: abjad.Selection(_).tuplets()),
    rmakers.rewrite_sustained(lambda _: abjad.Selection(_).tuplets()),
)

guitar_rhythm_handler_one = evans.RhythmHandler(
    rmaker=guitar_rmaker_one,
    forget=False,
    name="guitar_rhythm_handler_one",
)

###
###

flute_rmaker_two = rmakers.stack(
    evans.RTMMaker(
        [
            "(1 ((1 (-1 2)) (1 (-1 2)) (1 (-1 2)) (1 (-1 2))))",
            "(1 (-1 2 -1 2 -1 2 -1))",
            "(1 (-1 2 -1 2 -1 1))",
            "(1 ((1 (-1 2)) (1 (-1 2))))",
        ]
    ),
    rmakers.trivialize(lambda _: abjad.Selection(_).tuplets()),
    rmakers.extract_trivial(lambda _: abjad.Selection(_).tuplets()),
    rmakers.rewrite_rest_filled(lambda _: abjad.Selection(_).tuplets()),
    rmakers.rewrite_sustained(lambda _: abjad.Selection(_).tuplets()),
)

flute_rhythm_handler_two = evans.RhythmHandler(
    rmaker=flute_rmaker_two,
    forget=False,
    name="flute_rhythm_handler_two",
)

guitar_rmaker_two = rmakers.stack(
    evans.RTMMaker(
        [
            "(3 (1 1 1 1 1 1 1 1 1 1 1 1))",
        ]
    ),
    rmakers.trivialize(lambda _: abjad.Selection(_).tuplets()),
    rmakers.extract_trivial(lambda _: abjad.Selection(_).tuplets()),
    rmakers.rewrite_rest_filled(lambda _: abjad.Selection(_).tuplets()),
    rmakers.rewrite_sustained(lambda _: abjad.Selection(_).tuplets()),
)

guitar_rhythm_handler_two = evans.RhythmHandler(
    rmaker=guitar_rmaker_two,
    forget=False,
    name="guitar_rhythm_handler_two",
)

###
###

flute_rmaker_three = rmakers.stack(
    evans.RTMMaker(
        [
            "(1 (1 (1 (-1 1)) -1 1))",
            "(1 (-2 (2 (1 1 1)) -1 (3 (1 1 1 1))))",
            "(1 ((2 (1 1 1 1 1 1)) (3 (1 1 1 1 1)) 2 1))",
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
    rmakers.trivialize(lambda _: abjad.Selection(_).tuplets()),
    rmakers.extract_trivial(lambda _: abjad.Selection(_).tuplets()),
    rmakers.rewrite_rest_filled(lambda _: abjad.Selection(_).tuplets()),
    rmakers.rewrite_sustained(lambda _: abjad.Selection(_).tuplets()),
)

flute_rhythm_handler_three = evans.RhythmHandler(
    rmaker=flute_rmaker_three,
    forget=False,
    name="flute_rhythm_handler_three",
)

guitar_rmaker_three = rmakers.stack(
    evans.RTMMaker(
        [
            "(1 (1 (1 (1 1 1 1)) 1))",
            "(1 ((1 (1 1 1 1)) 1 1))",
            "(1 (2 (1 (1 1 1 1)) 2))",
            "(1 ((1 (1 1 1 1)) 2 2))",
            "(1 (3 (1 (1 1 1 1)) 3))",
            "(1 ((1 (1 1 1 1)) 3 3))",
            "(1 (4 (1 (1 1 1 1)) 4))",
            "(1 ((1 (1 1 1 1)) 4 4))",
            "(1 (2 3 3))",
            "(1 (3 3 2))",
            "(1 (1 1 1))",
        ]
    ),
    rmakers.trivialize(lambda _: abjad.Selection(_).tuplets()),
    rmakers.extract_trivial(lambda _: abjad.Selection(_).tuplets()),
    rmakers.rewrite_rest_filled(lambda _: abjad.Selection(_).tuplets()),
    rmakers.rewrite_sustained(lambda _: abjad.Selection(_).tuplets()),
)

guitar_rhythm_handler_three = evans.RhythmHandler(
    rmaker=guitar_rmaker_three,
    forget=False,
    name="guitar_rhythm_handler_three",
)

###
###

flute_rmaker_four = rmakers.stack(
    evans.RTMMaker(
        [
            "(1 ((1 (-1 2)) (1 (-1 2)) (1 (-1 2)) (1 (-1 2)) (1 (-1 2))))",
            "(1 (-1 2 -1 2 -1 2 -1 2 -1))",
            "(1 (-1 2 -1 2 -1 2 -1 1))",
            "(1 ((1 (-1 2)) (1 (-1 2)) (1 (-1 2))))",
            "(1 (-1 2 -1 2 -1))",
            "(1 (-1 2 -1 1))",
            "(1 ((1 (-1 2)) -2))",
        ]
    ),
    rmakers.trivialize(lambda _: abjad.Selection(_).tuplets()),
    rmakers.extract_trivial(lambda _: abjad.Selection(_).tuplets()),
    rmakers.rewrite_rest_filled(lambda _: abjad.Selection(_).tuplets()),
    rmakers.rewrite_sustained(lambda _: abjad.Selection(_).tuplets()),
)

flute_rhythm_handler_four = evans.RhythmHandler(
    rmaker=flute_rmaker_four,
    forget=False,
    name="flute_rhythm_handler_four",
)

guitar_rmaker_four = rmakers.stack(
    evans.RTMMaker(
        [
            "(8 (1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1))",
        ]
    ),
    rmakers.trivialize(lambda _: abjad.Selection(_).tuplets()),
    rmakers.extract_trivial(lambda _: abjad.Selection(_).tuplets()),
    rmakers.rewrite_rest_filled(lambda _: abjad.Selection(_).tuplets()),
    rmakers.rewrite_sustained(lambda _: abjad.Selection(_).tuplets()),
)

guitar_rhythm_handler_four = evans.RhythmHandler(
    rmaker=guitar_rmaker_four,
    forget=False,
    name="guitar_rhythm_handler_four",
)

###
###

guitar_rmaker_five = rmakers.stack(
    evans.RTMMaker(
        [
            "(1 (1 1 1 1 1))",
        ]
    ),
    rmakers.trivialize(lambda _: abjad.Selection(_).tuplets()),
    rmakers.extract_trivial(lambda _: abjad.Selection(_).tuplets()),
    rmakers.rewrite_rest_filled(lambda _: abjad.Selection(_).tuplets()),
    rmakers.rewrite_sustained(lambda _: abjad.Selection(_).tuplets()),
)

guitar_rhythm_handler_five = evans.RhythmHandler(
    rmaker=guitar_rmaker_five,
    forget=False,
    name="guitar_rhythm_handler_five",
)

###
###

flute_rmaker_six = rmakers.stack(
    evans.RTMMaker(
        [
            "(1 (4 (1 (1 1 1 1 1))))",
            "(1 (3 (1 (1 1 1 1))))",
            "(1 ((1 (1 1)) 1))",
            "(1 ((1 (1 1 1)) 3))",
            "(1 (2 (1 (1 1))))",
            "(1 ((1 (1 1 1)) (1 (1 1 1 1))))",
        ]
    ),
    rmakers.trivialize(lambda _: abjad.Selection(_).tuplets()),
    rmakers.extract_trivial(lambda _: abjad.Selection(_).tuplets()),
    rmakers.rewrite_rest_filled(lambda _: abjad.Selection(_).tuplets()),
    rmakers.rewrite_sustained(lambda _: abjad.Selection(_).tuplets()),
)

flute_rhythm_handler_six = evans.RhythmHandler(
    rmaker=flute_rmaker_six,
    forget=False,
    name="flute_rhythm_handler_six",
)

guitar_rmaker_six = rmakers.stack(
    evans.RTMMaker(
        [
            "(1 (4 (1 (1 1 1 1 1))))",
            "(1 (3 (1 (1 1 1 1))))",
            "(1 ((1 (1 1)) 1))",
            "(1 ((1 (1 1 1)) 3))",
            "(1 (2 (1 (1 1))))",
            "(1 ((1 (1 1 1)) (1 (1 1 1 1))))",
        ]
    ),
    rmakers.trivialize(lambda _: abjad.Selection(_).tuplets()),
    rmakers.extract_trivial(lambda _: abjad.Selection(_).tuplets()),
    rmakers.rewrite_rest_filled(lambda _: abjad.Selection(_).tuplets()),
    rmakers.rewrite_sustained(lambda _: abjad.Selection(_).tuplets()),
)

guitar_rhythm_handler_six = evans.RhythmHandler(
    rmaker=guitar_rmaker_six,
    forget=False,
    name="guitar_rhythm_handler_six",
)

###
###

flute_rmaker_seven = rmakers.stack(
    evans.RTMMaker(
        [
            "(1 ((1 (-1 2)) (1 (-1 2)) (1 (-1 2)) (1 (-1 2))))",
            "(1 (-1 2 -1 2 -1 2 -1))",
            "(1 (-1 2 -1 2 -1 1))",
            "(1 ((1 (-1 2)) (1 (-1 2))))",
            "(1 ((1 (-1 2)) (1 (-1 2)) (1 (-1 2)) (1 (-1 2))))",
            "(1 ((1 (-1 2)) (1 (-1 2)) (1 (-1 2)) (1 (-1 2))))",
            "(1 (-1 2 -1 2 -1 2 -1))",
            "(1 (-1 2 -1 2 -1 1))",
            "(1 ((1 (-1 2)) (1 (-1 2)) (1 (-1 2)) (1 (-1 2))))",
            "(1 (-1 2 -1 2 -1 2 -1))",
            "(1 (-1 2 -1 2 -1 1))",
            "(1 ((1 (-1 2)) (1 (-1 2))))",
            "(1 (-1 2 -1 2 -1 1))",
            "(1 (-1 2 -1 2 -1 2 -1))",
        ]
    ),
    rmakers.trivialize(lambda _: abjad.Selection(_).tuplets()),
    rmakers.extract_trivial(lambda _: abjad.Selection(_).tuplets()),
    rmakers.rewrite_rest_filled(lambda _: abjad.Selection(_).tuplets()),
    rmakers.rewrite_sustained(lambda _: abjad.Selection(_).tuplets()),
)

flute_rhythm_handler_seven = evans.RhythmHandler(
    rmaker=flute_rmaker_seven,
    forget=False,
    name="flute_rhythm_handler_seven",
)

guitar_rmaker_seven = rmakers.stack(
    evans.RTMMaker(
        [
            "(4 (1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1))",
            "(5/2 (1 1 1 1 1 1 1 1 1 1))",
            "(9/2 (1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1))",
        ]
    ),
    rmakers.trivialize(lambda _: abjad.Selection(_).tuplets()),
    rmakers.extract_trivial(lambda _: abjad.Selection(_).tuplets()),
    rmakers.rewrite_rest_filled(lambda _: abjad.Selection(_).tuplets()),
    rmakers.rewrite_sustained(lambda _: abjad.Selection(_).tuplets()),
)

guitar_rhythm_handler_seven = evans.RhythmHandler(
    rmaker=guitar_rmaker_seven,
    forget=False,
    name="guitar_rhythm_handler_seven",
)

###
###

flute_rmaker_eight = rmakers.stack(
    evans.RTMMaker(
        [
            "(1 ((1 (1 1 1)) (1 (1 1 1 2)) (1 (3 1))))",
            "(1 ((1 (1 1 1)) (1 (1 1 2 1)) (2 (1 1))))",
            "(1 ((1 (1 1 1)) (1 (1 2 1 3)) (1 (1 1))))",
            "(1 ((1 (1 1 1)) (1 (2 1 3 1)) (1 (1 1))))",
            "(1 ((1 (1 1 1)) (2 (1 3 1 1)) (1 (1 1))))",
            "(1 ((1 (1 1 2)) (1 (3 1 1 1)) (1 (1 1))))",
            "(1 ((1 (1 2 1)) (3 (1 1 1 1)) (1 (1 1))))",
            "(1 ((1 (2 1 3)) (1 (1 1 1 1)) (1 (1 1))))",
            "(1 ((2 (1 3 1)) (1 (1 1 1 1)) (1 (1 1))))",
            "(1 ((1 (3 1 1)) (1 (1 1 1 1)) (1 (1 2))))",
            "(1 ((3 (1 1 1)) (1 (1 1 1 1)) (1 (2 1))))",
            "(1 ((1 (1 1 1)) (1 (1 1 1 1)) (2 (1 3))))",
        ]
    ),
    rmakers.trivialize(lambda _: abjad.Selection(_).tuplets()),
    rmakers.extract_trivial(lambda _: abjad.Selection(_).tuplets()),
    rmakers.rewrite_rest_filled(lambda _: abjad.Selection(_).tuplets()),
    rmakers.rewrite_sustained(lambda _: abjad.Selection(_).tuplets()),
)

flute_rhythm_handler_eight = evans.RhythmHandler(
    rmaker=flute_rmaker_eight,
    forget=False,
    name="flute_rhythm_handler_eight",
)

guitar_rmaker_eight = rmakers.stack(
    evans.RTMMaker(
        [
            "(1 ((1 (1 1 1 1 1)) (1 (2 1)) (1 (1 2))))",
            "(1 ((1 (1 1 1 1 1)) (2 (1 1)) (1 (2 1))))",
            "(1 ((1 (1 1 1 1 2)) (1 (1 1)) (2 (1 1))))",
            "(1 ((1 (1 1 1 2 1)) (1 (1 2)) (1 (1 1))))",
            "(1 ((1 (1 1 2 1 1)) (1 (2 1)) (1 (1 1))))",
            "(1 ((1 (1 2 1 1 1)) (2 (1 1)) (1 (1 1))))",
            "(1 ((1 (2 1 1 1 2)) (1 (1 1)) (1 (1 1))))",
            "(1 ((2 (1 1 1 2 1)) (1 (1 1)) (1 (1 1))))",
            "(1 ((1 (1 1 2 1 1)) (1 (1 1)) (1 (1 2))))",
            "(1 ((1 (1 2 1 1 1)) (1 (1 1)) (1 (2 1))))",
            "(1 ((1 (2 1 1 1 1)) (1 (1 1)) (2 (1 1))))",
            "(1 ((2 (1 1 1 1 1)) (1 (1 2)) (1 (1 1))))",
        ]
    ),
    rmakers.trivialize(lambda _: abjad.Selection(_).tuplets()),
    rmakers.extract_trivial(lambda _: abjad.Selection(_).tuplets()),
    rmakers.rewrite_rest_filled(lambda _: abjad.Selection(_).tuplets()),
    rmakers.rewrite_sustained(lambda _: abjad.Selection(_).tuplets()),
)

guitar_rhythm_handler_eight = evans.RhythmHandler(
    rmaker=guitar_rmaker_eight,
    forget=False,
    name="guitar_rhythm_handler_eight",
)
