import abjad

fitted_meter_pairs = (
    (20, 16),
    (19, 16),
    (18, 16),
    (17, 16),
    (16, 16),
    (15, 16),
    (14, 16),
    (13, 16),
    (12, 16),
    (11, 16),
    (10, 16),
)
fitted_meters = [abjad.Meter(_) for _ in fitted_meter_pairs]
time_signatures = [abjad.TimeSignature(_) for _ in fitted_meters]

time_signatures.append(abjad.TimeSignature((3, 16)))  # for ending skip

bounds = abjad.math.cumulative_sums([_.duration for _ in time_signatures])
