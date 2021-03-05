
    \context Score = "arar Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            % [Global Context measure 1]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=98
            \time 5/4                                                          %! scaling time signatures
            \mark \markup \bold {  }
            s1 * 5/4
            ^ \markup \box \override #'(font-name . "STIXGeneral Bold") \caps C
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"98"
              }
            }
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            #(ly:expect-warning "strange time signature found")                %! scaling time signatures
            \time 13/12                                                        %! scaling time signatures
            s1 * 13/12
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            #(ly:expect-warning "strange time signature found")                %! scaling time signatures
            \time 11/12                                                        %! scaling time signatures
            s1 * 11/12
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 5]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            #(ly:expect-warning "strange time signature found")                %! scaling time signatures
            \time 7/12                                                         %! scaling time signatures
            s1 * 7/12
            % [Global Context measure 6]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=135
            #(ly:expect-warning "strange time signature found")                %! scaling time signatures
            \time 5/12                                                         %! scaling time signatures
            s1 * 5/12
            % [Global Context measure 7]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 8]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

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

                            e''4
                            \p

                        }

                        \times 2/3 {

                            r8

                            eqs''4

                        }

                        \times 2/3 {

                            r8

                            f''4

                        }

                        \times 2/3 {

                            r8

                            fqs''4

                        }

                        \times 2/3 {

                            r8

                            fs''4

                        }

                        \tweak edge-height #'(0.7 . 0)
                        \times 2/3 {
                            % [Voice 1 measure 2]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r8

                            ftqs''4

                            r8

                            g''4

                            r8

                            gqs''4

                            r8

                            gs''4

                            r8

                        }

                        \tweak edge-height #'(0.7 . 0)
                        \times 2/3 {
                            % [Voice 1 measure 3]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r8

                            gtqs''4

                            r8

                            a''4

                            r8

                            aqs''4

                            r8

                            as''8

                        }

                        \times 2/3 {
                            % [Voice 1 measure 4]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r8

                            atqs''4

                        }

                        \times 2/3 {

                            r8

                            b''4

                        }

                        \times 2/3 {

                            r8

                            bqs''4

                        }

                        \tweak edge-height #'(0.7 . 0)
                        \times 2/3 {
                            % [Voice 1 measure 5]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r8

                            c'''4

                            r8

                            cqs'''4

                            r8

                        }

                        \tweak edge-height #'(0.7 . 0)
                        \times 2/3 {
                            % [Voice 1 measure 6]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r8

                            cs'''4

                            r8

                            ctqs'''8

                        }

                        \times 2/3 {
                            % [Voice 1 measure 7]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r8

                            d'''4

                        }

                        r2
                        \bar "||"
                        % [Voice 1 measure 8]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

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
                        e4
                        \p
                        - \accent
                        ^ \markup {detune string 6}
                        \glissando                                             %! abjad.glissando(7)

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        \hide NoteHead                                         %! abjad.glissando(1)
                        \override Accidental.stencil = ##f                     %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t              %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t                    %! abjad.glissando(1)
                        e4
                        - \staccato

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        e4
                        - \staccato

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        e4
                        - \staccato

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        e4
                        - \staccato
                        % [Voice 2 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        eqf4
                        - \staccato

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        eqf4
                        - \accent

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        eqf4
                        - \staccato

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        eqf4
                        - \staccato

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        eqf4
                        - \staccato

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        ef4
                        - \staccato

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        ef4
                        - \accent

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        ef4
                        - \staccato
                        % [Voice 2 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        ef4
                        - \staccato

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        ef4
                        - \staccato

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        etqf4
                        - \accent
                        % [Voice 2 measure 5]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        etqf4
                        - \staccato

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        etqf4
                        - \staccato

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        etqf4
                        - \accent

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        etqf4
                        - \staccato
                        % [Voice 2 measure 7]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        etqf4
                        - \staccato

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        etqf4
                        - \accent

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        \revert Accidental.stencil                             %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip                      %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers                            %! abjad.glissando(6)
                        \undo \hide NoteHead                                   %! abjad.glissando(6)
                        etqf4
                        - \staccato
                        ^ \markup {keep scord.}
                        \bar "||"
                        % [Voice 2 measure 8]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

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
