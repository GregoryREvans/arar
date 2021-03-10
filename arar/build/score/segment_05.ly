
    \context Score = "arar Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            % [Global Context measure 1]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=150
            \time 4/4                                                          %! scaling time signatures
            \mark \markup \bold {  }
            s1 * 1
            ^ \markup { \box \override #'(font-name . "STIXGeneral Bold") \caps D}
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"150"
              }
            }
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 5]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 6]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 7]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 8]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 9]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 10]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

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

                        \times 4/7 {
                            % [Voice 1 measure 1]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \set Staff.shortInstrumentName =                   %! applying staff names and clefs
                            \markup { \hcenter-in #12 "bf." }                  %! applying staff names and clefs
                            \set Staff.instrumentName =                        %! applying staff names and clefs
                            \markup { \hcenter-in #14 "Bass Flute" }           %! applying staff names and clefs
                            f''1.
                            \f
                            \>
                            \glissando

                            f''4
                            \mp

                        }
                        % [Voice 1 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        f''2.
                        \mf
                        \>
                        \glissando

                        f''4
                        \p

                        \times 4/5 {
                            % [Voice 1 measure 3]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            e''1
                            \mp
                            \>
                            \glissando

                            e''4
                            \pp

                        }
                        % [Voice 1 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        cs''2.
                        \f
                        \>
                        \glissando

                        cs''4
                        \mp

                        \times 2/3 {
                            % [Voice 1 measure 5]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            c'''1
                            \mf
                            \>
                            \glissando

                            c'''2
                            \p

                        }

                        \times 4/7 {
                            % [Voice 1 measure 6]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            c'''1.
                            \mp
                            \>
                            \glissando

                            c'''4
                            \pp

                        }

                        \times 4/7 {
                            % [Voice 1 measure 7]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            c'''1.
                            \f
                            \>
                            \glissando

                            c'''4
                            \mp

                        }
                        % [Voice 1 measure 8]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        fs''2.
                        \mf
                        \>
                        \glissando

                        fs''4
                        \p

                        \times 4/5 {
                            % [Voice 1 measure 9]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            cs''1
                            \mp
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                            \glissando

                            cs''4
                            \ff
                            \bar "||"

                        }
                        % [Voice 1 measure 10]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

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

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/5 {
                            % [Voice 2 measure 1]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \set Staff.shortInstrumentName =                   %! applying staff names and clefs
                            \markup { \hcenter-in #12 "gt." }                  %! applying staff names and clefs
                            \set Staff.instrumentName =                        %! applying staff names and clefs
                            \markup { \hcenter-in #14 "Guitar" }               %! applying staff names and clefs
                            d'4
                            \p
                            - \staccato

                            d'4
                            - \staccato

                            d'4
                            - \staccato

                            d'4
                            - \staccato

                            d'4
                            - \staccato
                            ^ \markup {detune string 4}
                            \glissando

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/5 {

                            ctqs'4
                            - \staccato

                            ctqs'4
                            - \staccato

                            ctqs'4
                            - \staccato

                            ctqs'4
                            - \staccato

                            ctqs'4
                            - \staccato
                            \glissando

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/5 {

                            cs'4
                            - \staccato

                            cs'4
                            - \staccato

                            cs'4
                            - \staccato

                            cs'4
                            - \staccato

                            cs'4
                            - \staccato
                            \glissando

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/5 {

                            cqs'4
                            - \staccato

                            cqs'4
                            - \staccato

                            cqs'4
                            - \staccato

                            cqs'4
                            - \staccato

                            cqs'4
                            - \staccato
                            \glissando

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/5 {
                            % [Voice 2 measure 4]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            c'4
                            - \staccato

                            c'4
                            - \staccato

                            c'4
                            - \staccato

                            c'4
                            - \staccato

                            c'4
                            - \staccato
                            \glissando

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/5 {

                            bf4
                            - \staccato

                            bf4
                            - \staccato

                            bf4
                            - \staccato
                            \glissando

                            d'4
                            - \staccato

                            d'4
                            - \staccato

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/5 {

                            d'4
                            - \staccato

                            d'4
                            - \staccato

                            d'4
                            - \staccato

                            d'4
                            - \staccato

                            d'4
                            - \staccato
                            \glissando

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/5 {

                            ctqs'4
                            - \staccato

                            ctqs'4
                            - \staccato

                            ctqs'4
                            - \staccato

                            ctqs'4
                            - \staccato

                            ctqs'4
                            - \staccato
                            \glissando

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/5 {
                            % [Voice 2 measure 7]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            cs'4
                            - \staccato

                            cs'4
                            - \staccato

                            cs'4
                            - \staccato

                            cs'4
                            - \staccato

                            cs'4
                            - \staccato
                            \glissando

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/5 {

                            cqs'4
                            - \staccato

                            cqs'4
                            - \staccato

                            cqs'4
                            - \staccato

                            cqs'4
                            - \staccato

                            cqs'4
                            - \staccato
                            \glissando

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/5 {

                            c'4
                            - \staccato

                            c'4
                            - \staccato

                            c'4
                            - \staccato

                            c'4
                            - \staccato

                            c'4
                            - \staccato
                            \glissando

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/5 {

                            cqs'4
                            - \staccato
                            ^ \markup {keep scord.}

                            cqs'4
                            - \staccato

                            cqs'4
                            - \staccato

                            cqs'4
                            - \staccato

                            cqs'4
                            - \staccato
                            \bar "||"

                        }
                        % [Voice 2 measure 10]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

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

        >>

    >>
