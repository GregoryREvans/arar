import abjad

fitted_meter_pairs = (
    (3, 4),
    (3, 4),
    (3, 4),
    (3, 4),
    (3, 4),
    (3, 4),
    (3, 4),
    (3, 4),
)
fitted_meters = [abjad.Meter(_) for _ in fitted_meter_pairs]
time_signatures = [abjad.TimeSignature(_) for _ in fitted_meters]

time_signatures.append(abjad.TimeSignature((3, 16)))  # for ending skip

bounds = abjad.math.cumulative_sums([_.duration for _ in time_signatures])
