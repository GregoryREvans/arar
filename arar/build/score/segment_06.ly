
    \context Score = "arar Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            % [Global Context measure 1]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=80
            \time 3/4                                                          %! scaling time signatures
            \mark \markup \bold {  }
            s1 * 3/4
            ^ \markup { \box \override #'(font-name . "STIXGeneral Bold") \caps E}
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"80"
              }
            }
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 5]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 6]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 2/4                                                          %! scaling time signatures
            s1 * 1/2
            % [Global Context measure 7]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 8]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 9]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 10]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 6/4                                                          %! scaling time signatures
            s1 * 3/2
            % [Global Context measure 11]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 12]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 13]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 14]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 2/4                                                          %! scaling time signatures
            s1 * 1/2
            % [Global Context measure 15]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 16]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 17]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 18]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 19]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 20]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 2/4                                                          %! scaling time signatures
            s1 * 1/2
            % [Global Context measure 21]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 22]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 23]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4

        }

        \context StaffGroup = "Staff Group"
        <<

            \tag #'voice1
            {

                \context Staff = "Staff 1"
                {

                    \context Voice = "Voice 1"
                    {
                        % [Voice 1 measure 1]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \set Staff.shortInstrumentName =                       %! applying staff names and clefs
                        \markup { \hcenter-in #12 "bf." }                      %! applying staff names and clefs
                        \set Staff.instrumentName =                            %! applying staff names and clefs
                        \markup { \hcenter-in #14 "Bass Flute" }               %! applying staff names and clefs
                        r2.
                        % [Voice 1 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r1
                        % [Voice 1 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.

                        r2
                        % [Voice 1 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r1

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/5 {
                            % [Voice 1 measure 5]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            c'1

                            \times 4/5 {

                                \override Staff.Stem.stemlet-length = 0.75
                                c'16
                                [

                                c'16

                                c'16

                                c'16

                                \revert Staff.Stem.stemlet-length
                                c'16
                                ]

                            }

                        }
                        % [Voice 1 measure 6]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        c'4
                        ~

                        \override Staff.Stem.stemlet-length = 0.75
                        c'8
                        [

                        c'32

                        c'32

                        c'32

                        \revert Staff.Stem.stemlet-length
                        c'32
                        ]
                        % [Voice 1 measure 7]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        c'8.
                        [

                        \revert Staff.Stem.stemlet-length
                        c'16
                        ~
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        c'8
                        [

                        \revert Staff.Stem.stemlet-length
                        c'8
                        ~
                        ]

                        c'4

                        \times 2/3 {
                            % [Voice 1 measure 8]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            c'8
                            [

                            c'8

                            \revert Staff.Stem.stemlet-length
                            c'8
                            ]

                        }

                        c'2.

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            % [Voice 1 measure 9]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            c'1

                            c'4

                            c'4

                        }
                        % [Voice 1 measure 10]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        c'4

                        c'4

                        c'4

                        \override Staff.Stem.stemlet-length = 0.75
                        c'8.
                        [

                        \revert Staff.Stem.stemlet-length
                        c'16
                        ~
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        c'8
                        [

                        \revert Staff.Stem.stemlet-length
                        c'8
                        ~
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        c'16
                        [

                        \revert Staff.Stem.stemlet-length
                        c'8.
                        ]
                        % [Voice 1 measure 11]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        c'1

                        \times 4/5 {

                            \override Staff.Stem.stemlet-length = 0.75
                            c'16
                            [

                            c'16

                            c'16

                            c'16

                            \revert Staff.Stem.stemlet-length
                            c'16
                            ]

                        }

                        \times 4/7 {
                            % [Voice 1 measure 12]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            c'1.

                            c'4

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            % [Voice 1 measure 13]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            c'2.

                            c'4

                        }

                        \times 4/5 {
                            % [Voice 1 measure 14]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            c'2

                            c'8

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            % [Voice 1 measure 15]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            c'2.

                            c'4

                        }
                        % [Voice 1 measure 16]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        c'4

                        \override Staff.Stem.stemlet-length = 0.75
                        r8
                        [

                        \revert Staff.Stem.stemlet-length
                        c'8
                        ]

                        r4

                        c'4

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 5/8 {
                            % [Voice 1 measure 17]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r2

                            \times 2/3 {

                                c'4

                                c'4

                                c'4

                            }

                            \override Staff.Stem.stemlet-length = 0.75
                            r4
                            [

                            c'8.

                            c'8.

                            c'8.

                            \revert Staff.Stem.stemlet-length
                            c'8.
                            ]

                        }

                        \times 2/3 {
                            % [Voice 1 measure 18]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            c'16
                            [

                            c'16

                            c'16

                            c'16

                            c'16

                            \revert Staff.Stem.stemlet-length
                            c'16
                            ]

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/5 {

                            \override Staff.Stem.stemlet-length = 0.75
                            c'8
                            [

                            c'8

                            c'8

                            c'8

                            \revert Staff.Stem.stemlet-length
                            c'8
                            ]

                        }

                        c'8
                        ~

                        \override Staff.Stem.stemlet-length = 0.75
                        c'8
                        [

                        \revert Staff.Stem.stemlet-length
                        c'8
                        ]
                        % [Voice 1 measure 19]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        c'2

                        c'4

                        \times 4/7 {
                            % [Voice 1 measure 20]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            c'2.

                            c'8

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            % [Voice 1 measure 21]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            c'2.

                            \override Staff.Stem.stemlet-length = 0.75
                            c'16
                            [

                            c'16

                            c'16

                            \revert Staff.Stem.stemlet-length
                            c'16
                            ]

                        }
                        % [Voice 1 measure 22]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        c'4

                        c'4

                        c'2

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 10/24 {
                            % [Voice 1 measure 23]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            c'4

                            c'4

                            c'4

                        }

                        c'8.
                        ~

                        c'2.
                        \bar "||"

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
                            c'1

                            \times 4/5 {

                                \override Staff.Stem.stemlet-length = 0.75
                                c'16
                                [

                                c'16

                                c'16

                                c'16

                                \revert Staff.Stem.stemlet-length
                                c'16
                                ]

                            }

                        }
                        % [Voice 2 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        c'2.

                        \override Staff.Stem.stemlet-length = 0.75
                        c'16
                        [

                        c'16

                        c'16

                        \revert Staff.Stem.stemlet-length
                        c'16
                        ]

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 5/8 {
                            % [Voice 2 measure 3]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            c'2

                            c'2

                            c'1

                        }

                        \times 2/3 {
                            % [Voice 2 measure 4]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            c'8
                            [

                            c'8

                            \revert Staff.Stem.stemlet-length
                            c'8
                            ]

                        }

                        c'2.
                        % [Voice 2 measure 5]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        c'2

                        \override Staff.Stem.stemlet-length = 0.75
                        c'8
                        [

                        \revert Staff.Stem.stemlet-length
                        c'8
                        ]
                        % [Voice 2 measure 6]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2

                        \times 4/5 {
                            % [Voice 2 measure 7]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r8.

                            c'2.

                        }

                        \times 4/7 {
                            % [Voice 2 measure 8]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            c'1

                            c'4.

                            r4.

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 10/17 {
                            % [Voice 2 measure 9]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r4.

                            c'1..

                        }
                        % [Voice 2 measure 10]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        c'2.

                        c'2.

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            % [Voice 2 measure 11]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            c'2

                            \override Staff.Stem.stemlet-length = 0.75
                            c'8
                            [

                            c'8

                            c'8

                            \revert Staff.Stem.stemlet-length
                            c'8
                            ]

                            c'2

                        }

                        \times 2/3 {
                            % [Voice 2 measure 12]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            c'8
                            [

                            c'8

                            c'8

                            \revert Staff.Stem.stemlet-length
                            c'8
                            ]

                            c'2

                            c'2

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/5 {
                            % [Voice 2 measure 13]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            c'2

                            \override Staff.Stem.stemlet-length = 0.75
                            c'16
                            [

                            c'16

                            c'16

                            \revert Staff.Stem.stemlet-length
                            c'16
                            ]

                            c'2

                        }

                        \times 4/5 {
                            % [Voice 2 measure 14]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            c'32
                            [

                            c'32

                            c'32

                            \revert Staff.Stem.stemlet-length
                            c'32
                            ]

                            c'4

                            c'4

                        }
                        % [Voice 2 measure 15]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        c'8
                        [

                        \revert Staff.Stem.stemlet-length
                        c'8
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        c'8
                        [

                        c'16.

                        \revert Staff.Stem.stemlet-length
                        c'32
                        ~
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        c'16
                        [

                        c'16
                        ~

                        c'32

                        \revert Staff.Stem.stemlet-length
                        c'16.
                        ]

                        \times 4/5 {
                            % [Voice 2 measure 16]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            c'1

                            \times 4/5 {

                                \override Staff.Stem.stemlet-length = 0.75
                                c'16
                                [

                                c'16

                                c'16

                                c'16

                                \revert Staff.Stem.stemlet-length
                                c'16
                                ]

                            }

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 5/8 {
                            % [Voice 2 measure 17]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            c'1.

                            \override Staff.Stem.stemlet-length = 0.75
                            c'8
                            [

                            c'8

                            c'8

                            \revert Staff.Stem.stemlet-length
                            c'8
                            ]

                        }
                        % [Voice 2 measure 18]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        c'4

                        c'4

                        c'2

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7 {
                            % [Voice 2 measure 19]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            c'4.

                            \override Staff.Stem.stemlet-length = 0.75
                            c'32
                            [

                            c'32

                            c'32

                            \revert Staff.Stem.stemlet-length
                            c'32
                            ]

                            c'4.

                        }

                        \times 4/7 {
                            % [Voice 2 measure 20]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            c'32
                            [

                            c'32

                            c'32

                            \revert Staff.Stem.stemlet-length
                            c'32
                            ]

                            c'4.

                            c'4.

                        }

                        \times 2/3 {
                            % [Voice 2 measure 21]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            c'2

                            \override Staff.Stem.stemlet-length = 0.75
                            c'32
                            [

                            c'32

                            c'32

                            \revert Staff.Stem.stemlet-length
                            c'32
                            ]

                            c'2

                        }

                        \times 2/3 {
                            % [Voice 2 measure 22]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            c'8
                            [

                            c'8

                            \revert Staff.Stem.stemlet-length
                            c'8
                            ]

                        }

                        c'2.

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            % [Voice 2 measure 23]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            c'1

                            c'4

                            c'4
                            \bar "||"

                        }

                    }

                }

            }

        >>

    >>
