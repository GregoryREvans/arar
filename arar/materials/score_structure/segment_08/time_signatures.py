import abjad

fitted_meter_pairs = (
    (4, 4),
    (5, 6),
    (2, 3),
    (2, 4),
    (4, 4),
    (3, 4),
    (3, 4),
    (3, 4),
    (3, 4),
    (3, 4),
    (3, 4),
    (4, 4),
    (5, 6),
    (2, 3),
    (3, 4),
    (4, 4),
    (5, 6),
    (2, 3),
    (2, 4),
    (2, 3),
    (5, 6),
)
fitted_meters = [abjad.Meter(_) for _ in fitted_meter_pairs]
time_signatures = [abjad.TimeSignature(_) for _ in fitted_meters]

time_signatures.append(abjad.TimeSignature((3, 16)))  # for ending skip

bounds = abjad.math.cumulative_sums([_.duration for _ in time_signatures])
