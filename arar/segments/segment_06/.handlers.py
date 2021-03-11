import abjad
handler_to_value = abjad.OrderedDict(
    [
        (
            'Pitch Handler',
            abjad.OrderedDict(
                [
                    ('pitch_count', 48),
                    ('chord_boolean_count', -1),
                    ('chord_groups_count', -1),
                    ]
                ),
            ),
        (
            'Trill Handler',
            abjad.OrderedDict(
                [
                    ('count', 94),
                    ]
                ),
            ),
        (None, None),
        (
            'Articulation Handler',
            abjad.OrderedDict(
                [
                    ('count', 64),
                    ('vector_count', 64),
                    ]
                ),
            ),
        ]
    )