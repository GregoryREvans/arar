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
            stop_offset=abjad.Offset((5, 4)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((5, 4)),
            stop_offset=abjad.Offset((39, 16)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((39, 16)),
            stop_offset=abjad.Offset((57, 16)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((57, 16)),
            stop_offset=abjad.Offset((37, 8)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((37, 8)),
            stop_offset=abjad.Offset((45, 8)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((45, 8)),
            stop_offset=abjad.Offset((105, 16)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((105, 16)),
            stop_offset=abjad.Offset((119, 16)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((119, 16)),
            stop_offset=abjad.Offset((33, 4)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((33, 4)),
            stop_offset=abjad.Offset((9, 1)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((9, 1)),
            stop_offset=abjad.Offset((155, 16)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((155, 16)),
            stop_offset=abjad.Offset((165, 16)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset(0),
            stop_offset=abjad.Offset((57, 16)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((57, 16)),
            stop_offset=abjad.Offset((105, 16)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((105, 16)),
            stop_offset=abjad.Offset((9, 1)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((9, 1)),
            stop_offset=abjad.Offset((165, 16)),
            voice_name="Voice 2",
        ),
    ]
)
