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
            stop_offset=abjad.Offset(4),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset(4),
            stop_offset=abjad.Offset(11),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset(11),
            stop_offset=abjad.Offset(14),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset(14),
            stop_offset=abjad.Offset((69, 4)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((69, 4)),
            stop_offset=abjad.Offset((74, 4)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((74, 4)),
            stop_offset=abjad.Offset((43, 2)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset(0),
            stop_offset=abjad.Offset((19, 4)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((19, 4)),
            stop_offset=abjad.Offset((21, 4)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((21, 4)),
            stop_offset=abjad.Offset((39, 4)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((39, 4)),
            stop_offset=abjad.Offset((53, 4)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((53, 4)),
            stop_offset=abjad.Offset((69, 4)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((69, 4)),
            stop_offset=abjad.Offset((77, 4)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((77, 4)),
            stop_offset=abjad.Offset((43, 2)),
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
            start_offset=abjad.Offset(4),
            stop_offset=abjad.Offset(11),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset(11),
            stop_offset=abjad.Offset(14),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset(14),
            stop_offset=abjad.Offset((69, 4)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((69, 4)),
            stop_offset=abjad.Offset((74, 4)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((74, 4)),
            stop_offset=abjad.Offset((43, 2)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset(0),
            stop_offset=abjad.Offset((19, 4)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((21, 4)),
            stop_offset=abjad.Offset((39, 4)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((39, 4)),
            stop_offset=abjad.Offset((53, 4)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((53, 4)),
            stop_offset=abjad.Offset((69, 4)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((69, 4)),
            stop_offset=abjad.Offset((77, 4)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((77, 4)),
            stop_offset=abjad.Offset((43, 2)),
            voice_name="Voice 2",
        ),
    ]
)
