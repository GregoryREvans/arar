import abjad
import evans
from abjadext import rmakers

rtm = [
    "(1 (1 1 1 1 1 1 1 1 1 1 1 1))",
    "(1 ((1 (1 1 1)) (1 (1 1 1)) (1 (1 1 1)) (1 (1 1 1))))",
    "(1 ((1 (1 1 1 1)) (1 (1 1 1 1)) (1 (1 1 1 1))))",
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

durs = [(3, 8) for _ in rtm]

h = evans.RhythmHandler(
    rmakers.stack(
        evans.RTMMaker(rtm),
    ),
    forget=False,
)

sel = h(durs)

staff = abjad.Staff()
for _ in sel:
    staff.append(_)
abjad.attach(abjad.TimeSignature(durs[0]), abjad.select(staff).leaf(0))

markup = abjad.Markup.column(
    [
        abjad.Markup(_)
        for _ in [
            "(1 (1 1 1 1 1 1 1 1 1 1 1 1))",
            "(1 ((1 (1 1 1)) (1 (1 1 1)) (1 (1 1 1)) (1 (1 1 1))))",
            "(1 ((1 (1 1 1 1)) (1 (1 1 1 1)) (1 (1 1 1 1))))",
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
    ],
    direction=abjad.Up,
)
abjad.attach(markup, abjad.select(staff).leaf(0))

abjad.show(staff)
