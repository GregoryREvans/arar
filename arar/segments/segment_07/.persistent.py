import abjad
info = abjad.OrderedDict(
    [
        (
            'Voice 1',
            [
                abjad.LilyPondLiteral('\\stopStaff \\once \\override Staff.StaffSymbol.line-count = #0 \\startStaff', format_slot='before', ),
                abjad.LilyPondLiteral('\\once \\override Rest.color = #white', format_slot='before', ),
                ],
            ),
        (
            'Voice 2',
            [
                abjad.LilyPondLiteral('\\stopStaff \\once \\override Staff.StaffSymbol.line-count = #0 \\startStaff', format_slot='before', ),
                abjad.LilyPondLiteral('\\once \\override Rest.color = #white', format_slot='before', ),
                abjad.LilyPondLiteral('\\once \\override Staff.Tie.transparent = ##t', format_slot='before', ),
                abjad.LilyPondLiteral('\\once \\override Dots.staff-position = #1.75', format_slot='before', ),
                StopTextSpan(command='\\stopTextSpan'),
                ],
            ),
        ]
    )