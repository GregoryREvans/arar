import abjad
import baca
import evans

registrations = evans.CyclicList(
    [
        abjad.NumberedInterval(0),
        abjad.NumberedInterval(1),
        abjad.NumberedInterval(4),
        abjad.NumberedInterval(2),
        abjad.NumberedInterval(4),
        abjad.NumberedInterval(1),
    ],
    forget=False,
)

maker = baca.ZaggedPitchClassMaker(
    pc_cells=[
        [8, 3, 2, 9, 1, 5],
        [4, 1, 0, 6],
        [13, 7, 9, 6],
    ],
    division_ratios=[
        [
            [2, 1],
            [1],
            [1],
            [1, 1],
        ],
        [
            [1, 2],
            [1],
            [1],
            [1, 1, 1],
            [1, 1, 1],
        ],
    ],
    grouping_counts=[
        1,
        1,
        1,
        2,
        3,
    ],
)

pitch_classes = maker()

# abjad.show(pitch_classes)

# print(pitch_classes._get_depth())
# print("")
# print(len(pitch_classes))
# print("")
# iterator = pitch_classes.iterate(level=-2)
# print("")
# for cell in iterator:
#     print(cell.get_payload())
#     print("")


def extract_tree_pitches(pitch_class_trees, registrations):
    pitch_lists = []
    for pitch_class_tree in pitch_class_trees:
        for cell in pitch_class_tree.iterate(level=-2):
            pitch_list = []
            transposed_pitch_list = []
            for pitch_class in cell.get_payload():
                note = abjad.Note(pitch_class, abjad.Duration(1, 4))
                pitch_list.append(note)
            interval = registrations(r=1)[0]
            for pitch in pitch_list:
                transposed = interval.transpose(pitch)
                transposed_pitch_list.append(transposed.written_pitch)
            pitch_lists.append(transposed_pitch_list)
    return pitch_lists


note_lists = extract_tree_pitches(pitch_classes, registrations)

chords = [abjad.Chord(evans.Sequence(_).stack_pitches(), (1, 4)) for _ in note_lists]

# staff = abjad.Staff(evans.flatten(note_lists))
staff = abjad.Staff(chords)

h = evans.ClefHandler(
    clef="bass",
    add_extended_clefs=True,
    add_ottavas=False,
    allowable_clefs=["bass", "treble"],
)

h(staff)

abjad.iterpitches.respell_with_sharps(staff[:])

abjad.show(staff)
