import abjad
import evans

from arar.materials.score_structure.segment_06.material_pattern import (
    attachment_material_list,
    pitch_material_list,
    rhythm_material_list,
)
from arar.materials.score_structure.segment_06.time_signatures import bounds
from arar.materials.timespans.segment_06.make_timespans import (
    pitch_timespan_list,
    rhythm_timespan_list,
)

from .make_timespans import music_specifiers

voice_names = [specifier for specifier in music_specifiers]

# #######
# rhythm#
# #######
rhythm_mat = evans.CyclicList(rhythm_material_list, forget=False)

for voice in voice_names:
    for span in rhythm_timespan_list:
        if span.voice_name == voice:
            span._handler = rhythm_mat(r=1)[0]

segment_06_rhythm_timespans = evans.timespan.make_split_list(
    rhythm_timespan_list, bounds
)

rhythm_commands = []
for span in segment_06_rhythm_timespans:
    r_command = evans.RhythmCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    rhythm_commands.append(r_command)

# #######
# pitch#
# #######
pitch_mat = evans.CyclicList(pitch_material_list, forget=False)

for voice in voice_names:
    for span in pitch_timespan_list:
        if span.voice_name == voice:
            span._handler = pitch_mat(r=1)[0]

pitch_commands = []
for span in pitch_timespan_list:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    pitch_commands.append(h_command)

# #######
# attachment#
# #######
attachment_mat = evans.CyclicList(attachment_material_list, forget=False)

for voice in voice_names:
    for span in pitch_timespan_list:
        if span.voice_name == voice:
            span._handler = attachment_mat(r=1)[0]

segment_06_attachment_timespans = evans.timespan.make_split_list(
    pitch_timespan_list, bounds
)

attachment_commands = []
for span in segment_06_attachment_timespans:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    attachment_commands.append(h_command)

# #######
# all#
# #######

handler_commands = [
    pitch_commands,
    attachment_commands,
]
