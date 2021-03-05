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

            \tempo 4=120
            \time 3/4                                                          %! scaling time signatures
            \mark \markup \bold {  }
            s1 * 3/4
            ^ \markup { \box \override #'(font-name . "STIXGeneral Bold") \caps B}
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"120"
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

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 10]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 11]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

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
                        % [Voice 1 measure 1]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \set Staff.shortInstrumentName =                       %! applying staff names and clefs
                        \markup { \hcenter-in #12 "bf." }                      %! applying staff names and clefs
                        \set Staff.instrumentName =                            %! applying staff names and clefs
                        \markup { \hcenter-in #14 "Bass Flute" }               %! applying staff names and clefs
                        \override Staff.Stem.stemlet-length = 0.75
                        f''8.
                        [

                        \revert Staff.Stem.stemlet-length
                        r16
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        r32
                        [

                        gs''16.

                        \revert Staff.Stem.stemlet-length
                        r8
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        r16
                        [

                        \revert Staff.Stem.stemlet-length
                        cs''8.
                        ]
                        % [Voice 1 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        r8.
                        [

                        \revert Staff.Stem.stemlet-length
                        a'16
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        d'16
                        [

                        e'16

                        \revert Staff.Stem.stemlet-length
                        r16.
                        ]

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 16 9) "32")
                        \times 9/16 {

                            \override Staff.Stem.stemlet-length = 0.75
                            cs''8
                            [

                            c'''8

                            cs'''8

                            \revert Staff.Stem.stemlet-length
                            a''8
                            ]

                        }
                        % [Voice 1 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        f'''32
                        [

                        f''32

                        gs''32

                        cs''32

                        a'32

                        \revert Staff.Stem.stemlet-length
                        d'32
                        ]

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 10 9) "32")
                        \times 18/20 {

                            \override Staff.Stem.stemlet-length = 0.75
                            e'16
                            [

                            cs''16

                            c'''16

                            cs'''16

                            \revert Staff.Stem.stemlet-length
                            a''16
                            ]

                        }

                        f'''32
                        ~

                        \override Staff.Stem.stemlet-length = 0.75
                        f'''8
                        ~
                        [

                        f'''32

                        \revert Staff.Stem.stemlet-length
                        f''16.
                        ]

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 3) "4")
                        \times 3/4 {
                            % [Voice 1 measure 4]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            gs''4

                            cs''4.

                            a'4.

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 3) "4")
                        \times 3/4 {
                            % [Voice 1 measure 5]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            d'4.

                            e'4.

                            cs''4

                        }
                        % [Voice 1 measure 6]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        r8.
                        [

                        \revert Staff.Stem.stemlet-length
                        c'''16
                        ~
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        c'''8
                        [

                        \revert Staff.Stem.stemlet-length
                        cs'''8
                        ~
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        cs'''16
                        [

                        \revert Staff.Stem.stemlet-length
                        r8.
                        ]
                        % [Voice 1 measure 7]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        a''4

                        \override Staff.Stem.stemlet-length = 0.75
                        f'''16
                        [

                        f''16

                        gs''16

                        \revert Staff.Stem.stemlet-length
                        cs''16
                        ]

                        a'4
                        % [Voice 1 measure 8]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        d'16
                        [

                        e'16

                        cs''16

                        \revert Staff.Stem.stemlet-length
                        c'''16
                        ]

                        cs'''4

                        a''4

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) "8")
                        \times 6/5 {
                            % [Voice 1 measure 9]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            f'''4

                            \override Staff.Stem.stemlet-length = 0.75
                            f''32
                            [

                            gs''32

                            cs''32

                            \revert Staff.Stem.stemlet-length
                            a'32
                            ]

                            d'4

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) "8")
                        \times 6/5 {
                            % [Voice 1 measure 10]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            e'32
                            [

                            cs''32

                            c'''32

                            \revert Staff.Stem.stemlet-length
                            cs'''32
                            ]

                            a''4

                            f'''4
                            \bar "||"

                        }
                        % [Voice 1 measure 11]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

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
                        af4

                        \override Staff.Stem.stemlet-length = 0.75
                        ef'16
                        [

                        a''16

                        a''16

                        \revert Staff.Stem.stemlet-length
                        a''16
                        ]

                        d''4
                        % [Voice 2 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        <cs' f'>16
                        [

                        <cs' f'>16

                        <cs' f'>16

                        \revert Staff.Stem.stemlet-length
                        <cs' f'>16
                        ]

                        <fs' e''>4

                        <cs' c''>4

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) "8")
                        \times 6/5 {
                            % [Voice 2 measure 3]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            af4

                            \override Staff.Stem.stemlet-length = 0.75
                            ef'32
                            [

                            a''32

                            a''32

                            \revert Staff.Stem.stemlet-length
                            a''32
                            ]

                            d''4

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) "8")
                        \times 6/5 {
                            % [Voice 2 measure 4]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            <cs' f'>32
                            [

                            <cs' f'>32

                            <cs' f'>32

                            \revert Staff.Stem.stemlet-length
                            <cs' f'>32
                            ]

                            <fs' e''>4

                            <cs' c''>4

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) "8")
                        \times 6/7 {
                            % [Voice 2 measure 5]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            c'4.

                            \override Staff.Stem.stemlet-length = 0.75
                            g'32
                            [

                            a'32

                            ef'32

                            \revert Staff.Stem.stemlet-length
                            a''32
                            ]

                            d''4.

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) "8")
                        \times 6/7 {
                            % [Voice 2 measure 6]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'''32
                            [

                            g''32

                            cs''32

                            \revert Staff.Stem.stemlet-length
                            fs'32
                            ]

                            a4.

                            <cs' f'>4.

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "4.")
                        \times 2/3 {
                            % [Voice 2 measure 7]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            <ef' af'>2

                            \override Staff.Stem.stemlet-length = 0.75
                            d''32
                            [

                            cs'''32

                            a''32

                            \revert Staff.Stem.stemlet-length
                            af''32
                            ]

                            f''2

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "4.")
                        \times 2/3 {
                            % [Voice 2 measure 8]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            d''32
                            [

                            f'32

                            c'32

                            \revert Staff.Stem.stemlet-length
                            fs'32
                            ]

                            e''2

                            g2

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 3) "4")
                        \times 3/4 {
                            % [Voice 2 measure 9]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            a4

                            fs'4.

                            cs''4.

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 3) "4")
                        \times 3/4 {
                            % [Voice 2 measure 10]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            <g' a'>4.

                            fs'4.

                            a4
                            \bar "||"

                        }
                        % [Voice 2 measure 11]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

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
}                                                                              %! abjad.LilyPondFile._get_formatted_blocks()