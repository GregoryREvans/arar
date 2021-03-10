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
            start_offset=abjad.Offset(0),
            stop_offset=abjad.Offset(1),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset(1),
            stop_offset=abjad.Offset(2),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset(2),
            stop_offset=abjad.Offset(3),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset(3),
            stop_offset=abjad.Offset(4),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset(4),
            stop_offset=abjad.Offset(5),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset(5),
            stop_offset=abjad.Offset(6),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset(6),
            stop_offset=abjad.Offset(7),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset(7),
            stop_offset=abjad.Offset(8),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset(8),
            stop_offset=abjad.Offset(9),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset(0),
            stop_offset=abjad.Offset((3, 4)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((3, 4)),
            stop_offset=abjad.Offset((6, 4)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((6, 4)),
            stop_offset=abjad.Offset((9, 4)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((9, 4)),
            stop_offset=abjad.Offset((12, 4)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((12, 4)),
            stop_offset=abjad.Offset((15, 4)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((15, 4)),
            stop_offset=abjad.Offset((18, 4)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((18, 4)),
            stop_offset=abjad.Offset((21, 4)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((21, 4)),
            stop_offset=abjad.Offset((24, 4)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((24, 4)),
            stop_offset=abjad.Offset((27, 4)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((27, 4)),
            stop_offset=abjad.Offset((30, 4)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((30, 4)),
            stop_offset=abjad.Offset((33, 4)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((33, 4)),
            stop_offset=abjad.Offset((36, 4)),
            voice_name="Voice 2",
        ),
    ]
)
