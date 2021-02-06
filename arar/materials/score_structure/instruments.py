import abjad

instrument_one = abjad.BassFlute()
instrument_one_range = instrument_one.pitch_range
instrument_one_range_lowest = abjad.NumberedPitch(instrument_one_range.start_pitch)
instrument_one_range_highest = abjad.NumberedPitch(instrument_one_range.stop_pitch)

instrument_two = abjad.Guitar()
instrument_two_range = instrument_two.pitch_range
instrument_two_range_lowest = abjad.NumberedPitch(instrument_two_range.start_pitch)
instrument_two_range_highest = abjad.NumberedPitch(instrument_two_range.stop_pitch)
instruments = [
    instrument_one,
    instrument_two,
]
voices = len(instruments)

voice_to_name_dict = {
    "Voice 1": "bass_flute",
    "Voice 3": "guitar",
}
