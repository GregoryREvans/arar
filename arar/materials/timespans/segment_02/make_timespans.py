from collections import OrderedDict

import abjad
import tsmakers
from abjadext import rmakers as rmakers

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
            stop_offset=abjad.Offset(3),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset(3),
            stop_offset=abjad.Offset((13, 4)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((13, 4)),
            stop_offset=abjad.Offset((89, 8)),
            voice_name="Voice 1",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset(0),
            stop_offset=abjad.Offset(1),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset(3),
            stop_offset=abjad.Offset((13, 4)),
            voice_name="Voice 2",
        ),
        tsmakers.PerformedTimespan(
            start_offset=abjad.Offset((13, 4)),
            stop_offset=abjad.Offset((89, 8)),
            voice_name="Voice 2",
        ),
    ]
)

# ######
# pitch#
# ######
pitch_target_timespan = abjad.Timespan(0, 9)

pitch_timespan_maker = tsmakers.TaleaTimespanMaker(
    playing_talea=rmakers.Talea(counts=([5, 3, 2, 6]), denominator=4),
    silence_talea=rmakers.Talea(counts=([0]), denominator=4),
)

pitch_timespan_list = pitch_timespan_maker(
    music_specifiers=music_specifiers, target_timespan=pitch_target_timespan
)
