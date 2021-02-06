import abjad
handler_to_value = abjad.OrderedDict(
    [
        (
            'rhythm_handler_one',
            abjad.OrderedDict(
                [
                    (
                        'state',
                        abjad.OrderedDict(
                            [
                                ('divisions_consumed', 33),
                                ('incomplete_last_note', True),
                                ('logical_ties_produced', 14),
                                ('talea_weight_consumed', 63),
                                ]
                            ),
                        ),
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
        ]
    )