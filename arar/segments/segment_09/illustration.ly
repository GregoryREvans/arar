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

            \tempo 4=70
            \time 3/4                                                          %! scaling time signatures
            \mark \markup \bold {  }
            s1 * 3/4
            ^ \markup { \box \override #'(font-name . "STIXGeneral Bold") \caps H}
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"70"
              }
            }
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 5]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 6]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 7]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 8]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 9]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

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
                            \override Staff.Stem.stemlet-length = 0.75
                            c''8
                            \ff
                            [

                            cs''8

                            \revert Staff.Stem.stemlet-length
                            e''8
                            ]

                        }

                        \times 4/5 {

                            \override Staff.Stem.stemlet-length = 0.75
                            d''16
                            [

                            af''16

                            g''16

                            \revert Staff.Stem.stemlet-length
                            f''8
                            ]

                        }

                        \override Staff.Stem.stemlet-length = 0.75
                        e''8.
                        [

                        \revert Staff.Stem.stemlet-length
                        cs''16
                        ]
                        % [Voice 1 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        ef''16
                        [

                        a'16

                        \revert Staff.Stem.stemlet-length
                        bf'16
                        ]

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/5 {

                            \override Staff.Stem.stemlet-length = 0.75
                            a'''16
                            [

                            gqs'''16

                            ef'''8

                            \revert Staff.Stem.stemlet-length
                            fs'''16
                            ]

                        }

                        a''8
                        ~

                        \override Staff.Stem.stemlet-length = 0.75
                        a''16
                        [

                        \revert Staff.Stem.stemlet-length
                        bqf''8.
                        ]

                        \times 2/3 {
                            % [Voice 1 measure 3]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            e''8
                            [

                            f''8

                            \revert Staff.Stem.stemlet-length
                            af''8
                            ]

                        }

                        \times 4/7 {

                            \override Staff.Stem.stemlet-length = 0.75
                            fs''16
                            [

                            c'''8

                            b''16

                            \revert Staff.Stem.stemlet-length
                            a''8.
                            ]

                        }

                        \override Staff.Stem.stemlet-length = 0.75
                        af''8
                        [

                        \revert Staff.Stem.stemlet-length
                        f''8
                        ]

                        \times 2/3 {
                            % [Voice 1 measure 4]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            g''8
                            [

                            cs''8

                            \revert Staff.Stem.stemlet-length
                            d''8
                            ]

                        }

                        \times 4/7 {

                            \override Staff.Stem.stemlet-length = 0.75
                            cs''''8
                            [

                            bqs'''16

                            g'''8.

                            \revert Staff.Stem.stemlet-length
                            bf'''16
                            ]

                        }

                        \override Staff.Stem.stemlet-length = 0.75
                        cs'''8
                        [

                        \revert Staff.Stem.stemlet-length
                        dqs'''8
                        ]
                        % [Voice 1 measure 5]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        c''16
                        [

                        cs''16

                        e''16

                        \revert Staff.Stem.stemlet-length
                        d''16
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        af''8.
                        [

                        \revert Staff.Stem.stemlet-length
                        g''16
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        f''16
                        [

                        e''16
                        ~

                        e''32

                        \revert Staff.Stem.stemlet-length
                        cs''16.
                        ]
                        % [Voice 1 measure 6]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        ef''16
                        [

                        a'16

                        \revert Staff.Stem.stemlet-length
                        bf'8
                        ]

                        \times 2/3 {

                            \override Staff.Stem.stemlet-length = 0.75
                            a'''8.
                            [

                            gqs'''16

                            ef'''16

                            \revert Staff.Stem.stemlet-length
                            fs'''16
                            ]

                        }

                        \override Staff.Stem.stemlet-length = 0.75
                        a''8
                        [

                        \revert Staff.Stem.stemlet-length
                        bqf''8
                        ]

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/5 {
                            % [Voice 1 measure 7]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            e''16
                            [

                            f''8

                            af''16

                            fs''8.

                            c'''8.

                            b''8.

                            a''8.

                            af''8

                            \revert Staff.Stem.stemlet-length
                            f''8
                            ]

                        }

                        \times 2/3 {
                            % [Voice 1 measure 8]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            g''8
                            [

                            cs''16

                            \revert Staff.Stem.stemlet-length
                            d''8.
                            ]

                        }

                        \override Staff.Stem.stemlet-length = 0.75
                        cs''''16
                        [

                        bqs'''16

                        g'''16

                        \revert Staff.Stem.stemlet-length
                        bf'''16
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        cs'''8
                        [

                        \revert Staff.Stem.stemlet-length
                        dqs'''8
                        ]
                        % [Voice 1 measure 9]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                        \once \override Rest.color = #white                    %! applying ending skips
                        r1 * 3/32

                        \once \override MultiMeasureRest.color = #white        %! applying ending skips
                        R1 * 3/32
                        ^ \markup \center-align \musicglyph #"scripts.uverylongfermata" %! applying ending skips
                        \bar "|."
                        \stopStaff                                             %! applying ending skips

                    }

                }

            }

            \tag #'voice2
            {

                \context Staff = "Staff 2"
                {

                    \context Voice = "Voice 2"
                    {

                        \times 4/5 {
                            % [Voice 2 measure 1]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \set Staff.shortInstrumentName =                   %! applying staff names and clefs
                            \markup { \hcenter-in #12 "gt." }                  %! applying staff names and clefs
                            \set Staff.instrumentName =                        %! applying staff names and clefs
                            \markup { \hcenter-in #14 "Guitar" }               %! applying staff names and clefs
                            \override Staff.Stem.stemlet-length = 0.75
                            c'16
                            \ff
                            [

                            cs'16

                            e'16

                            d'16

                            \revert Staff.Stem.stemlet-length
                            af'16
                            ]

                        }

                        \times 2/3 {

                            g'4

                            f'8

                        }

                        \times 2/3 {

                            e'8

                            cs'4

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/5 {
                            % [Voice 2 measure 2]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            ef'16
                            [

                            a16

                            bf16

                            af''16

                            \revert Staff.Stem.stemlet-length
                            bf''16
                            ]

                        }

                        bf'16
                        ~

                        \override Staff.Stem.stemlet-length = 0.75
                        bf'8
                        [

                        \revert Staff.Stem.stemlet-length
                        d''8
                        ~
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        d''16
                        [

                        af'16
                        ~

                        af'16

                        \revert Staff.Stem.stemlet-length
                        fs'16
                        ]
                        % [Voice 2 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        c''32
                        [

                        d''32

                        af''32

                        e''32

                        e'''16

                        \revert Staff.Stem.stemlet-length
                        d'''16
                        ~
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        d'''32
                        [

                        e'16.

                        \revert Staff.Stem.stemlet-length
                        ef'8
                        ~
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        ef'16
                        [

                        \revert Staff.Stem.stemlet-length
                        a'8.
                        ]

                        \times 2/3 {
                            % [Voice 2 measure 4]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            g'16
                            [

                            bf'16

                            b'16

                            cs''8

                            \revert Staff.Stem.stemlet-length
                            d''16
                            ]

                        }

                        \times 2/3 {

                            af'8

                            bf'4

                        }

                        \override Staff.Stem.stemlet-length = 0.75
                        g'8
                        [

                        \revert Staff.Stem.stemlet-length
                        fs'8
                        ]

                        \times 2/3 {
                            % [Voice 2 measure 5]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            c'16
                            [

                            cs'16

                            e'8

                            d'16

                            \revert Staff.Stem.stemlet-length
                            af'16
                            ]

                        }

                        \times 2/3 {

                            g'4

                            f'8

                        }

                        \override Staff.Stem.stemlet-length = 0.75
                        e'8
                        [

                        \revert Staff.Stem.stemlet-length
                        cs'8
                        ]
                        % [Voice 2 measure 6]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        ef'32
                        [

                        a16

                        bf32

                        af''32

                        bf''32

                        \revert Staff.Stem.stemlet-length
                        bf'16
                        ~
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        bf'8
                        [

                        \revert Staff.Stem.stemlet-length
                        d''8
                        ~
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        d''16
                        [

                        af'16
                        ~

                        af'32

                        \revert Staff.Stem.stemlet-length
                        fs'16.
                        ]

                        \times 4/7 {
                            % [Voice 2 measure 7]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            c''8
                            [

                            d''16

                            af''16

                            e''16

                            \revert Staff.Stem.stemlet-length
                            e'''8
                            ]

                        }

                        \override Staff.Stem.stemlet-length = 0.75
                        d'''8
                        [

                        \revert Staff.Stem.stemlet-length
                        e'8
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        ef'8
                        [

                        \revert Staff.Stem.stemlet-length
                        a'8
                        ]
                        % [Voice 2 measure 8]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        g'16
                        [

                        bf'16

                        b'16

                        \revert Staff.Stem.stemlet-length
                        cs''16
                        ~
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        cs''16
                        [

                        d''16

                        af'16.

                        \revert Staff.Stem.stemlet-length
                        bf'32
                        ~
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        bf'16
                        [

                        g'16
                        ~

                        g'32

                        \revert Staff.Stem.stemlet-length
                        fs'16.
                        ]
                        % [Voice 2 measure 9]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                        \once \override Rest.color = #white                    %! applying ending skips
                        r1 * 3/32
                        _ \markup {
                            \override #'(font-name . "STIXGeneral")
                            \with-color #white
                            \right-column {
                                \line { "\hspace #0.75 ............" }
                                \with-color #black
                                \line { \hspace #0.75 Iowa City, Ia. }
                                \with-color #black
                                \line { \hspace #0.75 January - March 2021 }
                            }
                        }

                        \once \override MultiMeasureRest.color = #white        %! applying ending skips
                        R1 * 3/32
                        ^ \markup \center-align \musicglyph #"scripts.uverylongfermata" %! applying ending skips
                        \bar "|."
                        \stopStaff                                             %! applying ending skips

                    }

                }

            }

        >>

    >>
}                                                                              %! abjad.LilyPondFile._get_formatted_blocks()