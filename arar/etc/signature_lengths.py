import abjad
import evans

segment_01_signatures = [
    (15, 16),
    (14, 16),
    (12, 16),
    (17, 16),
    (16, 16),
    (15, 16),
    (13, 16),
    (19, 16),
    (18, 16),
    (17, 16),
    (16, 16),
    (15, 16),
    (13, 16),
    (17, 16),
    (16, 16),
    (15, 16),
    (14, 16),
    (13, 16),
    (12, 16),
]

segment_01_part_01 = evans.Sequence([abjad.Duration(_) for _ in segment_01_signatures[:2]]).sum()
segment_01_part_02 = evans.Sequence([abjad.Duration(_) for _ in segment_01_signatures[3:6]]).sum()
segment_01_part_03 = evans.Sequence([abjad.Duration(_) for _ in segment_01_signatures[7:12]]).sum()
segment_01_part_04 = evans.Sequence([abjad.Duration(_) for _ in segment_01_signatures[13:]]).sum()
segment_01_total_sum = evans.Sequence(
    [
        segment_01_part_01,
        segment_01_part_02,
        segment_01_part_03,
        segment_01_part_04,
    ]
).sum()
# print(segment_01_part_01)
# print(segment_01_part_02)
# print(segment_01_part_03)
# print(segment_01_part_04)
# print(segment_01_total_sum)
