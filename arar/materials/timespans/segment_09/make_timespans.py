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
            stop_offset=abjad.Offset(6),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset(0),
            stop_offset=abjad.Offset(6),
            voice_name="Voice 2",
        ),
    ]
)
