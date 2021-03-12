import abjad
import evans

from arar.materials.score_structure.segment_08.material_pattern import (
    pitch_material_list,
    rhythm_material_list,
)
from arar.materials.timespans.segment_08.make_timespans import (
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

rhythm_commands = []
for span in rhythm_timespan_list:
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

# ####
# all#
# ####

handler_commands = [pitch_commands]
