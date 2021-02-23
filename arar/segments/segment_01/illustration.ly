\version "2.19.84"                                                             %! abjad.LilyPondFile._get_format_pieces()
\language "english"                                                            %! abjad.LilyPondFile._get_format_pieces()

\include "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily"           %! abjad.LilyPondFile._get_formatted_includes()
\include "/Users/evansdsg2/Scores/arar/arar/build/first_stylesheet.ily"        %! abjad.LilyPondFile._get_formatted_includes()

\header {                                                                      %! abjad.LilyPondFile._get_formatted_blocks()
    tagline = ##f
}                                                                              %! abjad.LilyPondFile._get_formatted_blocks()

\layout {}

\paper {}

\score {                                                                       %! abjad.LilyPondFile._get_formatted_blocks()

    \context Score = "arar Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            % [Global Context measure 1]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=135
            \time 15/16                                                        %! scaling time signatures
            \mark \markup {
                \bold
                    {
                    }
                }
            s1 * 15/16
            ^ \markup {
                \box
                    \override
                        #'(font-name . "STIXGeneral Bold")
                        \caps
                            Introduction
                }
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"135"
              }
            }
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 14/16                                                        %! scaling time signatures
            s1 * 7/8
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 12/16                                                        %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 17/16                                                        %! scaling time signatures
            s1 * 17/16
            % [Global Context measure 5]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 16/16                                                        %! scaling time signatures
            s1 * 1
            % [Global Context measure 6]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 15/16                                                        %! scaling time signatures
            s1 * 15/16
            % [Global Context measure 7]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 13/16                                                        %! scaling time signatures
            s1 * 13/16
            % [Global Context measure 8]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 19/16                                                        %! scaling time signatures
            s1 * 19/16
            % [Global Context measure 9]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 18/16                                                        %! scaling time signatures
            s1 * 9/8
            % [Global Context measure 10]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 17/16                                                        %! scaling time signatures
            s1 * 17/16
            % [Global Context measure 11]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 16/16                                                        %! scaling time signatures
            s1 * 1
            % [Global Context measure 12]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 15/16                                                        %! scaling time signatures
            s1 * 15/16
            % [Global Context measure 13]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 13/16                                                        %! scaling time signatures
            s1 * 13/16
            % [Global Context measure 14]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 17/16                                                        %! scaling time signatures
            s1 * 17/16
            % [Global Context measure 15]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 16/16                                                        %! scaling time signatures
            s1 * 1
            % [Global Context measure 16]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 15/16                                                        %! scaling time signatures
            s1 * 15/16
            % [Global Context measure 17]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 14/16                                                        %! scaling time signatures
            s1 * 7/8
            % [Global Context measure 18]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 13/16                                                        %! scaling time signatures
            s1 * 13/16
            % [Global Context measure 19]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 12/16                                                        %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 20]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \once \override Score.TimeSignature.stencil = ##f                  %! applying ending skips
            \time 3/16                                                         %! scaling time signatures
            s1 * 3/16

        }

        \context StaffGroup = "Staff Group"
        <<

            \tag #'voice1
            {

                \context Staff = "Staff 1"
                {

                    \context Voice = "Voice 1"
                    {

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 28 15) "16")
                        \times 15/28 {
                            % [Voice 1 measure 1]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \set Staff.shortInstrumentName =                   %! applying staff names and clefs
                            \markup { bf. }                                    %! applying staff names and clefs
                            \set Staff.instrumentName =                        %! applying staff names and clefs
                            "Bass Flute"                                       %! applying staff names and clefs
                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            f''1.
                            \glissando                                         %! abjad.glissando(7)

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \hide NoteHead                                     %! abjad.glissando(1)
                            \override Accidental.stencil = ##f                 %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t          %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t                %! abjad.glissando(1)
                            \revert Accidental.stencil                         %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip                  %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers                        %! abjad.glissando(6)
                            \undo \hide NoteHead                               %! abjad.glissando(6)
                            f''4

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 7) "8")
                        \times 7/8 {
                            % [Voice 1 measure 2]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            f''2.
                            \glissando                                         %! abjad.glissando(7)

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \hide NoteHead                                     %! abjad.glissando(1)
                            \override Accidental.stencil = ##f                 %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t          %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t                %! abjad.glissando(1)
                            \revert Accidental.stencil                         %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip                  %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers                        %! abjad.glissando(6)
                            \undo \hide NoteHead                               %! abjad.glissando(6)
                            f''4

                        }
                        % [Voice 1 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 20 17) "16")
                        \times 17/20 {
                            % [Voice 1 measure 4]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            e''1
                            \glissando                                         %! abjad.glissando(7)

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \hide NoteHead                                     %! abjad.glissando(1)
                            \override Accidental.stencil = ##f                 %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t          %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t                %! abjad.glissando(1)
                            \revert Accidental.stencil                         %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip                  %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers                        %! abjad.glissando(6)
                            \undo \hide NoteHead                               %! abjad.glissando(6)
                            e''4

                        }
                        % [Voice 1 measure 5]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        cs''2.
                        \glissando                                             %! abjad.glissando(7)

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        \hide NoteHead                                         %! abjad.glissando(1)
                        \override Accidental.stencil = ##f                     %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t              %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t                    %! abjad.glissando(1)
                        \revert Accidental.stencil                             %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip                      %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers                            %! abjad.glissando(6)
                        \undo \hide NoteHead                                   %! abjad.glissando(6)
                        cs''4

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 5) "8.")
                        \times 5/8 {
                            % [Voice 1 measure 6]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            c'''1
                            \glissando                                         %! abjad.glissando(7)

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \hide NoteHead                                     %! abjad.glissando(1)
                            \override Accidental.stencil = ##f                 %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t          %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t                %! abjad.glissando(1)
                            \revert Accidental.stencil                         %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip                  %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers                        %! abjad.glissando(6)
                            \undo \hide NoteHead                               %! abjad.glissando(6)
                            c'''2

                        }
                        % [Voice 1 measure 7]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.

                        r16

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 28 19) "16")
                        \times 19/28 {
                            % [Voice 1 measure 8]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            c'''1.
                            \glissando                                         %! abjad.glissando(7)

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \hide NoteHead                                     %! abjad.glissando(1)
                            \override Accidental.stencil = ##f                 %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t          %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t                %! abjad.glissando(1)
                            \revert Accidental.stencil                         %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip                  %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers                        %! abjad.glissando(6)
                            \undo \hide NoteHead                               %! abjad.glissando(6)
                            c'''4

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 14 9) "8")
                        \times 9/14 {
                            % [Voice 1 measure 9]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            c'''1.
                            \glissando                                         %! abjad.glissando(7)

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \hide NoteHead                                     %! abjad.glissando(1)
                            \override Accidental.stencil = ##f                 %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t          %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t                %! abjad.glissando(1)
                            \revert Accidental.stencil                         %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip                  %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers                        %! abjad.glissando(6)
                            \undo \hide NoteHead                               %! abjad.glissando(6)
                            c'''4

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 32 17) "16")
                        \times 17/32 {
                            % [Voice 1 measure 10]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            fs''1.
                            \glissando                                         %! abjad.glissando(7)

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \hide NoteHead                                     %! abjad.glissando(1)
                            \override Accidental.stencil = ##f                 %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t          %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t                %! abjad.glissando(1)
                            \revert Accidental.stencil                         %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip                  %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers                        %! abjad.glissando(6)
                            \undo \hide NoteHead                               %! abjad.glissando(6)
                            fs''2

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "4")
                        \times 4/5 {
                            % [Voice 1 measure 11]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            cs''1
                            \glissando                                         %! abjad.glissando(7)

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \hide NoteHead                                     %! abjad.glissando(1)
                            \override Accidental.stencil = ##f                 %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t          %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t                %! abjad.glissando(1)
                            \revert Accidental.stencil                         %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip                  %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers                        %! abjad.glissando(6)
                            \undo \hide NoteHead                               %! abjad.glissando(6)
                            cs''4

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 16 15) "16")
                        \times 15/16 {
                            % [Voice 1 measure 12]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            g'2.
                            \glissando                                         %! abjad.glissando(7)

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \hide NoteHead                                     %! abjad.glissando(1)
                            \override Accidental.stencil = ##f                 %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t          %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t                %! abjad.glissando(1)
                            \revert Accidental.stencil                         %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip                  %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers                        %! abjad.glissando(6)
                            \undo \hide NoteHead                               %! abjad.glissando(6)
                            g'4

                        }
                        % [Voice 1 measure 13]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.

                        r16

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 24 17) "16")
                        \times 17/24 {
                            % [Voice 1 measure 14]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            a'1
                            \glissando                                         %! abjad.glissando(7)

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \hide NoteHead                                     %! abjad.glissando(1)
                            \override Accidental.stencil = ##f                 %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t          %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t                %! abjad.glissando(1)
                            \revert Accidental.stencil                         %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip                  %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers                        %! abjad.glissando(6)
                            \undo \hide NoteHead                               %! abjad.glissando(6)
                            a'2

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) "8")
                        \times 8/7 {
                            % [Voice 1 measure 15]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            a'2.
                            \glissando                                         %! abjad.glissando(7)

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \hide NoteHead                                     %! abjad.glissando(1)
                            \override Accidental.stencil = ##f                 %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t          %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t                %! abjad.glissando(1)
                            \revert Accidental.stencil                         %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip                  %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers                        %! abjad.glissando(6)
                            \undo \hide NoteHead                               %! abjad.glissando(6)
                            a'8

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 28 15) "16")
                        \times 15/28 {
                            % [Voice 1 measure 16]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            fqs''1.
                            \glissando                                         %! abjad.glissando(7)

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \hide NoteHead                                     %! abjad.glissando(1)
                            \override Accidental.stencil = ##f                 %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t          %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t                %! abjad.glissando(1)
                            \revert Accidental.stencil                         %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip                  %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers                        %! abjad.glissando(6)
                            \undo \hide NoteHead                               %! abjad.glissando(6)
                            fqs''4

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 7) "8")
                        \times 7/8 {
                            % [Voice 1 measure 17]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            fs''2.
                            \glissando                                         %! abjad.glissando(7)

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \hide NoteHead                                     %! abjad.glissando(1)
                            \override Accidental.stencil = ##f                 %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t          %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t                %! abjad.glissando(1)
                            \revert Accidental.stencil                         %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip                  %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers                        %! abjad.glissando(6)
                            \undo \hide NoteHead                               %! abjad.glissando(6)
                            fs''4

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 20 13) "16")
                        \times 13/20 {
                            % [Voice 1 measure 18]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            ftqs''1
                            \glissando                                         %! abjad.glissando(7)

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \hide NoteHead                                     %! abjad.glissando(1)
                            \override Accidental.stencil = ##f                 %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t          %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t                %! abjad.glissando(1)
                            \revert Accidental.stencil                         %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip                  %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers                        %! abjad.glissando(6)
                            \undo \hide NoteHead                               %! abjad.glissando(6)
                            ftqs''4

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 3) "4")
                        \times 3/4 {
                            % [Voice 1 measure 19]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            f''2.
                            \glissando                                         %! abjad.glissando(7)

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \hide NoteHead                                     %! abjad.glissando(1)
                            \override Accidental.stencil = ##f                 %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t          %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t                %! abjad.glissando(1)
                            \revert Accidental.stencil                         %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip                  %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers                        %! abjad.glissando(6)
                            \undo \hide NoteHead                               %! abjad.glissando(6)
                            f''4
                            \bar "||"

                        }
                        % [Voice 1 measure 20]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                        \once \override Rest.color = #white                    %! applying ending skips
                        r1 * 3/32

                        \once \override MultiMeasureRest.color = #white        %! applying ending skips
                        R1 * 3/32
                        ^ \markup {                                            %! applying ending skips
                            \musicglyph                                        %! applying ending skips
                                #"scripts.ushortfermata"                       %! applying ending skips
                            }                                                  %! applying ending skips
                        \stopStaff \startStaff                                 %! applying ending skips

                    }

                }

            }

            \tag #'voice2
            {

                \context Staff = "Staff 2"
                {

                    \context Voice = "Voice 2"
                    {
                        % [Voice 2 measure 1]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \set Staff.shortInstrumentName =                       %! applying staff names and clefs
                        \markup { gt. }                                        %! applying staff names and clefs
                        \set Staff.instrumentName =                            %! applying staff names and clefs
                        "Guitar"                                               %! applying staff names and clefs
                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        r8.

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        <e c' f' af' b' e''>2.
                        \glissando                                             %! abjad.glissando(7)
                        % [Voice 2 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        \hide NoteHead                                         %! abjad.glissando(1)
                        \override Accidental.stencil = ##f                     %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t              %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t                    %! abjad.glissando(1)
                        <e c' f' af' b' e''>2

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        \revert Accidental.stencil                             %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip                      %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers                            %! abjad.glissando(6)
                        \undo \hide NoteHead                                   %! abjad.glissando(6)
                        <e c' f' af' b' e''>8.

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        r8.
                        % [Voice 2 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        r2.
                        % [Voice 2 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        r8.

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        <e d' f' bf' b' e''>2..
                        \glissando                                             %! abjad.glissando(7)
                        % [Voice 2 measure 5]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        \hide NoteHead                                         %! abjad.glissando(1)
                        \override Accidental.stencil = ##f                     %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t              %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t                    %! abjad.glissando(1)
                        <e d' f' bf' b' e''>2

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        <e d' f' bf' b' e''>2
                        % [Voice 2 measure 6]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        \revert Accidental.stencil                             %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip                      %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers                            %! abjad.glissando(6)
                        \undo \hide NoteHead                                   %! abjad.glissando(6)
                        <e d' f' bf' b' e''>2.

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        r8.
                        % [Voice 2 measure 7]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        r2.

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        r16
                        % [Voice 2 measure 8]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        r8.

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        <e c' f' af' b' e''>1
                        \glissando                                             %! abjad.glissando(7)
                        % [Voice 2 measure 9]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        \hide NoteHead                                         %! abjad.glissando(1)
                        \override Accidental.stencil = ##f                     %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t              %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t                    %! abjad.glissando(1)
                        <e c' f' af' b' e''>2.

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        \revert Accidental.stencil                             %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip                      %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers                            %! abjad.glissando(6)
                        \undo \hide NoteHead                                   %! abjad.glissando(6)
                        <e c' f' af' b' e''>8.

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        r8.
                        % [Voice 2 measure 10]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        r8.

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        <e ds' gs' b' e''>2.
                        \glissando                                             %! abjad.glissando(7)

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        \hide NoteHead                                         %! abjad.glissando(1)
                        \override Accidental.stencil = ##f                     %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t              %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t                    %! abjad.glissando(1)
                        <e ds' gs' b' e''>8
                        % [Voice 2 measure 11]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        <e ds' gs' b' e''>2
                        ~

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        <e ds' gs' b' e''>16

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        \revert Accidental.stencil                             %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip                      %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers                            %! abjad.glissando(6)
                        \undo \hide NoteHead                                   %! abjad.glissando(6)
                        <e ds' gs' b' e''>4

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        r8.

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 5) "8.")
                        \times 5/8 {
                            % [Voice 2 measure 12]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            r4.

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            <e ds' gs' b' e''>2
                            \glissando                                         %! abjad.glissando(7)

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \hide NoteHead                                     %! abjad.glissando(1)
                            \override Accidental.stencil = ##f                 %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t          %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t                %! abjad.glissando(1)
                            \revert Accidental.stencil                         %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip                  %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers                        %! abjad.glissando(6)
                            \undo \hide NoteHead                               %! abjad.glissando(6)
                            <e ds' gs' b' e''>4

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            r4.

                        }
                        % [Voice 2 measure 13]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        r2.

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        r16
                        % [Voice 2 measure 14]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        r8.

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        <e c' f' af' b' e''>2..
                        \glissando                                             %! abjad.glissando(7)

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) "8")
                        \times 8/7 {
                            % [Voice 2 measure 15]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \hide NoteHead                                     %! abjad.glissando(1)
                            \override Accidental.stencil = ##f                 %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t          %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t                %! abjad.glissando(1)
                            <e c' f' af' b' e''>2

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \revert Accidental.stencil                         %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip                  %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers                        %! abjad.glissando(6)
                            \undo \hide NoteHead                               %! abjad.glissando(6)
                            <e c' f' af' b' e''>8.

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            r8.

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 17 15) "16")
                        \times 15/17 {
                            % [Voice 2 measure 16]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            r8.

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            <e d' f' bf' b' e''>2..
                            \glissando                                         %! abjad.glissando(7)

                        }
                        % [Voice 2 measure 17]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        \hide NoteHead                                         %! abjad.glissando(1)
                        \override Accidental.stencil = ##f                     %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t              %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t                    %! abjad.glissando(1)
                        <e d' f' bf' b' e''>4..

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        <e d' f' bf' b' e''>4..

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 15 13) "16")
                        \times 13/15 {
                            % [Voice 2 measure 18]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \revert Accidental.stencil                         %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip                  %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers                        %! abjad.glissando(6)
                            \undo \hide NoteHead                               %! abjad.glissando(6)
                            <e d' f' bf' b' e''>2.

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            r8.

                        }
                        % [Voice 2 measure 19]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        r8.

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        <e c' f' af' b' e''>4
                        \glissando                                             %! abjad.glissando(7)

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        \hide NoteHead                                         %! abjad.glissando(1)
                        \override Accidental.stencil = ##f                     %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t              %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t                    %! abjad.glissando(1)
                        \revert Accidental.stencil                             %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip                      %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers                            %! abjad.glissando(6)
                        \undo \hide NoteHead                                   %! abjad.glissando(6)
                        <e c' f' af' b' e''>8

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        r8.
                        \bar "||"
                        % [Voice 2 measure 20]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                        \once \override Rest.color = #white                    %! applying ending skips
                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        r1 * 3/32

                        \once \override MultiMeasureRest.color = #white        %! applying ending skips
                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        R1 * 3/32
                        ^ \markup {                                            %! applying ending skips
                            \musicglyph                                        %! applying ending skips
                                #"scripts.ushortfermata"                       %! applying ending skips
                            }                                                  %! applying ending skips
                        \stopStaff \startStaff                                 %! applying ending skips

                    }

                }

            }

        >>

    >>
}                                                                              %! abjad.LilyPondFile._get_formatted_blocks()