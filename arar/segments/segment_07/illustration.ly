\version "2.19.84"                                                             %! abjad.LilyPondFile._get_format_pieces()
\language "english"                                                            %! abjad.LilyPondFile._get_format_pieces()

\include "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily"           %! abjad.LilyPondFile._get_formatted_includes()
\include "/Users/evansdsg2/Scores/arar/arar/build/first_stylesheet.ily"        %! abjad.LilyPondFile._get_formatted_includes()

\score {                                                                       %! abjad.LilyPondFile._get_formatted_blocks()

    \context Score = "arar Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            % [Global Context measure 1]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=135
            \time 20/16                                                        %! scaling time signatures
            \mark \markup \bold {  }
            s1 * 5/4
            ^ \markup { \box \override #'(font-name . "STIXGeneral Bold") \caps F}
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"135"
              }
            }
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 19/16                                                        %! scaling time signatures
            s1 * 19/16
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 18/16                                                        %! scaling time signatures
            s1 * 9/8
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

            \time 14/16                                                        %! scaling time signatures
            s1 * 7/8
            % [Global Context measure 8]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 13/16                                                        %! scaling time signatures
            s1 * 13/16
            % [Global Context measure 9]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 12/16                                                        %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 10]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 11/16                                                        %! scaling time signatures
            s1 * 11/16
            % [Global Context measure 11]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 10/16                                                        %! scaling time signatures
            s1 * 5/8

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
                        \times 5/7 {
                            % [Voice 1 measure 1]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \set Staff.shortInstrumentName =                   %! applying staff names and clefs
                            \markup { \hcenter-in #12 "bf." }                  %! applying staff names and clefs
                            \set Staff.instrumentName =                        %! applying staff names and clefs
                            \markup { \hcenter-in #14 "Bass Flute" }           %! applying staff names and clefs
                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            f''1.
                            :32
                            \pp
                            \<
                            \stopTrillSpan
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
                            :32
                            \f
                            \>

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 19/32 {
                            % [Voice 1 measure 2]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            f''1.
                            :32
                            \p
                            \<
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
                            f''2
                            :32
                            \mf
                            \>

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 9/10 {
                            % [Voice 1 measure 3]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            e''1
                            :32
                            \mp
                            \<
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
                            :32
                            \mf
                            \>

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 17/32 {
                            % [Voice 1 measure 4]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            cs''1.
                            :32
                            \pp
                            \<
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
                            cs''2
                            :32
                            \f
                            \>

                        }

                        \times 2/3 {
                            % [Voice 1 measure 5]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            c'''1
                            :32
                            \p
                            \<
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
                            :32
                            \mf
                            \>

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 15/28 {
                            % [Voice 1 measure 6]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            c'''1.
                            :32
                            \mp
                            \<
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
                            :32
                            \mf
                            \>

                        }
                        % [Voice 1 measure 7]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        c'''2.
                        :32
                        \pp
                        \<
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
                        c'''8
                        :32
                        \f
                        \>

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 13/16 {
                            % [Voice 1 measure 8]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            fs''2.
                            :32
                            \p
                            \<
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
                            :32
                            \mf
                            \>

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/5 {
                            % [Voice 1 measure 9]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            cs''1
                            :32
                            \mp
                            \<
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
                            :32
                            \mf
                            \>

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 11/16 {
                            % [Voice 1 measure 10]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            g'2.
                            :32
                            \pp
                            \<
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
                            :32
                            \f
                            \>

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            % [Voice 1 measure 11]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            a'2
                            :32
                            \p
                            \<
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
                            a'4
                            :32
                            \mf
                            \bar "||"

                        }

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
                        \markup { \hcenter-in #12 "gt." }                      %! applying staff names and clefs
                        \set Staff.instrumentName =                            %! applying staff names and clefs
                        \markup { \hcenter-in #14 "Guitar" }                   %! applying staff names and clefs
                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        r4

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        <e c' f' af' b' e''>1
                        :32
                        \pp
                        \<
                        \glissando                                             %! abjad.glissando(7)
                        - \abjad-solid-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright
                            ras. \hspace #0.5 }
                        - \tweak staff-padding 4.5
                        \startTextSpan

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 19/28 {
                            % [Voice 2 measure 2]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \hide NoteHead                                     %! abjad.glissando(1)
                            \override Accidental.stencil = ##f                 %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t          %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t                %! abjad.glissando(1)
                            <e c' f' af' b' e''>1
                            :32
                            \f
                            \>

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \revert Accidental.stencil                         %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip                  %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers                        %! abjad.glissando(6)
                            \undo \hide NoteHead                               %! abjad.glissando(6)
                            <e c' f' af' b' e''>4.
                            :32
                            \p

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            r4.
                            \stopTextSpan

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 9/17 {
                            % [Voice 2 measure 3]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            r4.

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            <e d' f' bf' b' e''>1..
                            :32
                            \pp
                            \<
                            \glissando                                         %! abjad.glissando(7)
                            - \abjad-solid-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright
                                ras. \hspace #0.5 }
                            - \tweak staff-padding 4.5
                            \startTextSpan

                        }

                        \scaleDurations #'(17 . 32) {
                            % [Voice 2 measure 4]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \hide NoteHead                                     %! abjad.glissando(1)
                            \override Accidental.stencil = ##f                 %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t          %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t                %! abjad.glissando(1)
                            <e d' f' bf' b' e''>1
                            :32
                            \f
                            \>

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            <e d' f' bf' b' e''>1
                            :32
                            \p
                            \<

                        }

                        \times 8/15 {
                            % [Voice 2 measure 5]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \revert Accidental.stencil                         %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip                  %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers                        %! abjad.glissando(6)
                            \undo \hide NoteHead                               %! abjad.glissando(6)
                            <e d' f' bf' b' e''>1.
                            :32
                            \mf

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            r4.
                            \stopTextSpan

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 15/19 {
                            % [Voice 2 measure 6]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            r8.

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            <e c' f' af' b' e''>1
                            :32
                            \pp
                            \<
                            \glissando                                         %! abjad.glissando(7)
                            - \abjad-solid-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright
                                tamb. \hspace #0.5 }
                            - \tweak staff-padding 4.5
                            \startTextSpan

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 7/9 {
                            % [Voice 2 measure 7]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \hide NoteHead                                     %! abjad.glissando(1)
                            \override Accidental.stencil = ##f                 %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t          %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t                %! abjad.glissando(1)
                            <e c' f' af' b' e''>2.
                            :32
                            \f
                            \>

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \revert Accidental.stencil                         %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip                  %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers                        %! abjad.glissando(6)
                            \undo \hide NoteHead                               %! abjad.glissando(6)
                            <e c' f' af' b' e''>8.
                            :32
                            \p

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            r8.
                            \stopTextSpan

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 13/17 {
                            % [Voice 2 measure 8]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            r8.

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            <e ds' gs' b' e''>2.
                            :32
                            \pp
                            \<
                            \glissando                                         %! abjad.glissando(7)
                            - \abjad-solid-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright
                                tamb. \hspace #0.5 }
                            - \tweak staff-padding 4.5
                            \startTextSpan

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \hide NoteHead                                     %! abjad.glissando(1)
                            \override Accidental.stencil = ##f                 %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t          %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t                %! abjad.glissando(1)
                            <e ds' gs' b' e''>8
                            :32
                            \f
                            \>

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            % [Voice 2 measure 9]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            <e ds' gs' b' e''>2
                            :32
                            \p
                            \<
                            ~

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            <e ds' gs' b' e''>16
                            :32
                            \mf
                            \>

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \revert Accidental.stencil                         %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip                  %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers                        %! abjad.glissando(6)
                            \undo \hide NoteHead                               %! abjad.glissando(6)
                            <e ds' gs' b' e''>4
                            :32
                            \mp

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            r8.
                            \stopTextSpan

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 11/12 {
                            % [Voice 2 measure 10]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            r8.

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            <e ds' gs' b' e''>4
                            :32
                            \pp
                            \<
                            \glissando                                         %! abjad.glissando(7)
                            - \abjad-solid-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright
                                norm. \hspace #0.5 }
                            - \tweak staff-padding 4.5
                            \startTextSpan

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
                            <e ds' gs' b' e''>8
                            :32
                            \f

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            r8.
                            \stopTextSpan

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 10/17 {
                            % [Voice 2 measure 11]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            r8.

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            <e c' f' af' b' e''>2..
                            :32
                            \mp
                            - \abjad-solid-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright
                                norm. \hspace #0.5 }
                            - \tweak staff-padding 4.5
                            \startTextSpan
                            \bar "||"

                        }

                    }

                }

            }

        >>

    >>
}                                                                              %! abjad.LilyPondFile._get_formatted_blocks()