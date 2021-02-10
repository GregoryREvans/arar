import abjad
handler_to_value = abjad.OrderedDict(
    [
        (
            'rhythm_handler_one',
            abjad.OrderedDict(
                [
                    ('state', 0),
                    ]
                ),
            ),
        (
            'silence_maker',
            abjad.OrderedDict(
                [
                    (
                        'state',
                        abjad.OrderedDict(
                            [
                                ('divisions_consumed', 1),
                                ('logical_ties_produced', 1),
                                ]
                            ),
                        ),
                    ]
                ),
            ),
        (
            'Composite Handler',
            abjad.OrderedDict(
                [
                    ('state', 1),
                    ]
                ),
            ),
        ]
    )