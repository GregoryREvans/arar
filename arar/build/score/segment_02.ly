
    \context Score = "arar Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            % [Global Context measure 1]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=98
            \time 4/4                                                          %! scaling time signatures
            \mark \markup \bold {  }
            s1 * 1
            ^ \markup \box \override #'(font-name . "STIXGeneral Bold") \caps A
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"98"
              }
            }
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            #(ly:expect-warning "strange time signature found")                %! scaling time signatures
            \time 5/6                                                          %! scaling time signatures
            s1 * 5/6
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            #(ly:expect-warning "strange time signature found")                %! scaling time signatures
            \time 2/3                                                          %! scaling time signatures
            s1 * 2/3
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 2/4                                                          %! scaling time signatures
            s1 * 1/2
            % [Global Context measure 5]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 1/4                                                          %! scaling time signatures
            s1 * 1/4
            % [Global Context measure 6]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=135
            \time 21/16                                                        %! scaling time signatures
            s1 * 21/16
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"135"
              }
            }
            % [Global Context measure 7]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 20/16                                                        %! scaling time signatures
            s1 * 5/4
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

                        \times 2/3 {
                            % [Voice 1 measure 1]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \set Staff.shortInstrumentName =                   %! applying staff names and clefs
                            \markup { \hcenter-in #12 "bf." }                  %! applying staff names and clefs
                            \set Staff.instrumentName =                        %! applying staff names and clefs
                            \markup { \hcenter-in #14 "Bass Flute" }           %! applying staff names and clefs
                            r8

                            a''4
                            \p

                        }

                        \times 2/3 {

                            r8

                            aqf''4

                        }

                        \times 2/3 {

                            r8

                            af''4

                        }

                        \times 2/3 {

                            r8

                            atqf''4

                        }

                        \tweak edge-height #'(0.7 . 0)
                        \times 2/3 {
                            % [Voice 1 measure 2]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r8

                            g''4

                            r8

                            g''4

                            r8

                            gqs''4

                            r8

                        }

                        \tweak edge-height #'(0.7 . 0)
                        \times 2/3 {
                            % [Voice 1 measure 3]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r8

                            gs''4

                            r8

                            gtqs''4

                            r8

                            gs''8

                        }

                        \times 2/3 {
                            % [Voice 1 measure 4]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r8

                            gqs''4

                        }

                        \times 2/3 {

                            r8

                            g''4

                        }
                        % [Voice 1 measure 5]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r4

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            % [Voice 1 measure 6]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            a'1.
                            \f
                            \>
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
                            \p

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 5/8 {
                            % [Voice 1 measure 7]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            fs'1.
                            \ff
                            \>
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
                            fs'2
                            \p

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 19/20 {
                            % [Voice 1 measure 8]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            cs'1
                            \pp
                            - \tweak stencil #abjad-flared-hairpin
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
                            cs'4
                            \mf

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 9/16 {
                            % [Voice 1 measure 9]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            e'1.
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
                            e'2
                            \mf

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 17/24 {
                            % [Voice 1 measure 10]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            cs'1
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
                            cs'2
                            \mp

                        }

                        \times 4/7 {
                            % [Voice 1 measure 11]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            c'1.
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
                            c'4
                            \p

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 15/28 {
                            % [Voice 1 measure 12]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            fs'1.
                            - \tweak circled-tip ##t
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
                            fs'4
                            \mf
                            \bar "||"

                        }
                        % [Voice 1 measure 13]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                        \once \override Rest.color = #white                    %! applying ending skips
                        r1 * 3/32

                        \once \override MultiMeasureRest.color = #white        %! applying ending skips
                        R1 * 3/32
                        ^ \markup \center-align \musicglyph #"scripts.ushortfermata" %! applying ending skips
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
                        \markup { \hcenter-in #12 "gt." }                      %! applying staff names and clefs
                        \set Staff.instrumentName =                            %! applying staff names and clefs
                        \markup { \hcenter-in #14 "Guitar" }                   %! applying staff names and clefs
                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        a4
                        \p
                        - \accent
                        ^ \markup {detune string 5}
                        \glissando                                             %! abjad.glissando(7)

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        \hide NoteHead                                         %! abjad.glissando(1)
                        \override Accidental.stencil = ##f                     %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t              %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t                    %! abjad.glissando(1)
                        a4
                        - \staccato

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        a4
                        - \staccato

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        aqf4
                        - \staccato
                        % [Voice 2 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        aqf4
                        - \staccato

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        aqf4
                        - \accent

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        af4
                        - \staccato

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        af4
                        - \staccato

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        af4
                        - \staccato

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        gqs4
                        - \accent
                        % [Voice 2 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        gqs4
                        - \staccato
                        ^ \markup {keep scord.}

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        \revert Accidental.stencil                             %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip                      %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers                            %! abjad.glissando(6)
                        \undo \hide NoteHead                                   %! abjad.glissando(6)
                        gqs4
                        - \staccato
                        % [Voice 2 measure 5]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        r4

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 7/10 {
                            % [Voice 2 measure 6]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            r4.

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            <e d' f' bf' b' e''>1.
                            :32
                            \f
                            \>
                            \glissando                                         %! abjad.glissando(7)
                            - \abjad-solid-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright
                                tamb. \hspace #0.5 }
                            - \tweak staff-padding 4.5
                            \startTextSpan

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 5/7 {
                            % [Voice 2 measure 7]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \hide NoteHead                                     %! abjad.glissando(1)
                            \override Accidental.stencil = ##f                 %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t          %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t                %! abjad.glissando(1)
                            <e d' f' bf' b' e''>1
                            :32

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \revert Accidental.stencil                         %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip                  %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers                        %! abjad.glissando(6)
                            \undo \hide NoteHead                               %! abjad.glissando(6)
                            <e d' f' bf' b' e''>4.
                            :32
                            \p

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            r4.
                            \stopTextSpan

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 19/34 {
                            % [Voice 2 measure 8]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            r4.

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            <e cs' f' gs' b' e''>1..
                            :32
                            \f
                            \>
                            \glissando                                         %! abjad.glissando(7)
                            - \abjad-solid-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright
                                ras. \hspace #0.5 }
                            - \tweak staff-padding 4.5
                            \startTextSpan

                        }

                        \scaleDurations #'(9 . 16) {
                            % [Voice 2 measure 9]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \hide NoteHead                                     %! abjad.glissando(1)
                            \override Accidental.stencil = ##f                 %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t          %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t                %! abjad.glissando(1)
                            <e cs' f' gs' b' e''>1
                            :32

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            <e cs' f' gs' b' e''>1
                            :32

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 17/30 {
                            % [Voice 2 measure 10]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \revert Accidental.stencil                         %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip                  %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers                        %! abjad.glissando(6)
                            \undo \hide NoteHead                               %! abjad.glissando(6)
                            <e cs' f' gs' b' e''>1.
                            :32
                            \p

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            r4.
                            \stopTextSpan

                        }

                        \times 16/19 {
                            % [Voice 2 measure 11]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            r8.

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            <e d' f' bf' b' e''>1
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

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            % [Voice 2 measure 12]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \hide NoteHead                                     %! abjad.glissando(1)
                            \override Accidental.stencil = ##f                 %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t          %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t                %! abjad.glissando(1)
                            <e d' f' bf' b' e''>2.
                            :32

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \revert Accidental.stencil                         %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip                  %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers                        %! abjad.glissando(6)
                            \undo \hide NoteHead                               %! abjad.glissando(6)
                            <e d' f' bf' b' e''>8.
                            :32
                            \ff

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            r8.
                            \stopTextSpan
                            \bar "||"

                        }
                        % [Voice 2 measure 13]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                        \once \override Rest.color = #white                    %! applying ending skips
                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        r1 * 3/32

                        \once \override MultiMeasureRest.color = #white        %! applying ending skips
                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        R1 * 3/32
                        ^ \markup \center-align \musicglyph #"scripts.ushortfermata" %! applying ending skips
                        \stopStaff \startStaff                                 %! applying ending skips

                    }

                }

            }

        >>

    >>
