from collections import OrderedDict

import abjad
from abjadext import rmakers as rmakers
from tsmakers.TaleaTimespanMaker import TaleaTimespanMaker

from arar.materials.score_structure.instruments import instruments

music_specifiers = OrderedDict(
    [(f"Voice {i+1}", None) for i, name in enumerate(instruments)]
)

# #######
# rhythm#
# #######
rhythm_target_timespan = abjad.Timespan(0, 9)

rhythm_timespan_maker = TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(counts=([0, 2, 2, 0]), denominator=8),
    playing_talea=rmakers.Talea(counts=([5, 3, 2, 1, 1]), denominator=4),
    playing_groupings=([1, 2, 3, 2]),
    # silence_talea=rmakers.Talea(counts=([1, 2, 1, 3]), denominator=4),
)

rhythm_timespan_list = rhythm_timespan_maker(
    music_specifiers=music_specifiers, target_timespan=rhythm_target_timespan
)

# ######
# pitch#
# ######
pitch_target_timespan = abjad.Timespan(0, 9)

pitch_timespan_maker = TaleaTimespanMaker(
    playing_talea=rmakers.Talea(counts=([5, 3, 2, 6]), denominator=4),
    silence_talea=rmakers.Talea(counts=([0]), denominator=4),
)

pitch_timespan_list = pitch_timespan_maker(
    music_specifiers=music_specifiers, target_timespan=pitch_target_timespan
)
