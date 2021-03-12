from collections import OrderedDict

import abjad
import tsmakers

from arar.materials.score_structure.instruments import instruments

music_specifiers = OrderedDict(
    [(f"Voice {i+1}", None) for i, name in enumerate(instruments)]
)

# #######
# rhythm#
# #######

rhythm_timespan_list = abjad.TimespanList(
    [
        tsmakers.PerformedTimespan(
            start_offset=((0, 1)),
            stop_offset=((1, 1)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((1, 1)),
            stop_offset=((11, 6)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((11, 6)),
            stop_offset=((5, 2)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((5, 2)),
            stop_offset=((3, 1)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((3, 1)),
            stop_offset=((4, 1)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((4, 1)),
            stop_offset=((19, 4)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((19, 4)),
            stop_offset=((11, 2)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((11, 2)),
            stop_offset=((25, 4)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((25, 4)),
            stop_offset=((7, 1)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((7, 1)),
            stop_offset=((31, 4)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((31, 4)),
            stop_offset=((17, 2)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((17, 2)),
            stop_offset=((19, 2)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((19, 2)),
            stop_offset=((31, 3)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((31, 3)),
            stop_offset=((11, 1)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((11, 1)),
            stop_offset=((47, 4)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((47, 4)),
            stop_offset=((51, 4)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((51, 4)),
            stop_offset=((163, 12)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((163, 12)),
            stop_offset=((57, 4)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((57, 4)),
            stop_offset=((59, 4)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((59, 4)),
            stop_offset=((185, 12)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((185, 12)),
            stop_offset=((65, 4)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((0, 1)),
            stop_offset=((1, 1)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((4, 1)),
            stop_offset=((19, 4)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((19, 4)),
            stop_offset=((11, 2)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((11, 2)),
            stop_offset=((25, 4)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((25, 4)),
            stop_offset=((7, 1)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((7, 1)),
            stop_offset=((31, 4)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((31, 4)),
            stop_offset=((17, 2)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((17, 2)),
            stop_offset=((19, 2)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((11, 1)),
            stop_offset=((47, 4)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((47, 4)),
            stop_offset=((51, 4)),
            voice_name="Voice 2",
        ),
    ]
)

# #######
# pitch#
# #######

pitch_timespan_list = abjad.TimespanList(
    [
        tsmakers.PerformedTimespan(
            start_offset=((0, 1)),
            stop_offset=((1, 1)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((1, 1)),
            stop_offset=((11, 6)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((11, 6)),
            stop_offset=((5, 2)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((5, 2)),
            stop_offset=((3, 1)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((3, 1)),
            stop_offset=((4, 1)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((4, 1)),
            stop_offset=((19, 4)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((19, 4)),
            stop_offset=((11, 2)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((11, 2)),
            stop_offset=((25, 4)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((25, 4)),
            stop_offset=((7, 1)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((7, 1)),
            stop_offset=((31, 4)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((17, 2)),
            stop_offset=((19, 2)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((19, 2)),
            stop_offset=((31, 3)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((31, 3)),
            stop_offset=((11, 1)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((47, 4)),
            stop_offset=((51, 4)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((51, 4)),
            stop_offset=((163, 12)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((163, 12)),
            stop_offset=((57, 4)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((57, 4)),
            stop_offset=((59, 4)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((59, 4)),
            stop_offset=((185, 12)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((185, 12)),
            stop_offset=((65, 4)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((0, 1)),
            stop_offset=((1, 1)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((1, 1)),
            stop_offset=((11, 6)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((11, 6)),
            stop_offset=((5, 2)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((5, 2)),
            stop_offset=((3, 1)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((3, 1)),
            stop_offset=((4, 1)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((4, 1)),
            stop_offset=((19, 4)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((19, 4)),
            stop_offset=((11, 2)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((11, 2)),
            stop_offset=((25, 4)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((25, 4)),
            stop_offset=((7, 1)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((7, 1)),
            stop_offset=((31, 4)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((17, 2)),
            stop_offset=((19, 2)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((19, 2)),
            stop_offset=((31, 3)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((31, 3)),
            stop_offset=((11, 1)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((47, 4)),
            stop_offset=((51, 4)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((51, 4)),
            stop_offset=((163, 12)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((163, 12)),
            stop_offset=((57, 4)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((57, 4)),
            stop_offset=((59, 4)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((59, 4)),
            stop_offset=((185, 12)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=((185, 12)),
            stop_offset=((65, 4)),
            voice_name="Voice 2",
        ),
    ]
)
