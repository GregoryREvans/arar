
    \context Score = "arar Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            % [Global Context measure 1]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=115
            \time 4/4                                                          %! scaling time signatures
            \mark \markup {
                \bold
                    {
                    }
                }
            s1 * 1
            ^ \markup {
                \box
                    \override
                        #'(font-name . "STIXGeneral Bold")
                        \caps
                            introduction
                }
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 5]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 6]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 7]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 8]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 9]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 10]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 2/4                                                          %! scaling time signatures
            s1 * 1/2
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
                        \markup { bf. }                                        %! applying staff names and clefs
                        \set Staff.instrumentName =                            %! applying staff names and clefs
                        "Bass Flute"                                           %! applying staff names and clefs
                        ef''4

                        \override Staff.Stem.stemlet-length = 0.75
                        r8
                        [

                        \revert Staff.Stem.stemlet-length
                        ef''8
                        ]

                        r4

                        ef''4
                        % [Voice 1 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        r16
                        [

                        ef''16

                        r32

                        \revert Staff.Stem.stemlet-length
                        ef''16.
                        ]

                        r4

                        \override Staff.Stem.stemlet-length = 0.75
                        ef''16
                        [

                        ef''16
                        ~

                        ef''32

                        ef''16

                        \revert Staff.Stem.stemlet-length
                        ef''32
                        ]
                        % [Voice 1 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        ef''8
                        [

                        \revert Staff.Stem.stemlet-length
                        ef''8
                        ~
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        ef''16
                        [

                        \revert Staff.Stem.stemlet-length
                        ef''8.
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        ef''8.
                        [

                        \revert Staff.Stem.stemlet-length
                        ef''16
                        ~
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        ef''8
                        [

                        \revert Staff.Stem.stemlet-length
                        ef''8
                        ]

                        r4
                        % [Voice 1 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        r16
                        [

                        ef''16

                        ef''16

                        \revert Staff.Stem.stemlet-length
                        r16
                        ]

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "8")
                        \times 2/3 {

                            \override Staff.Stem.stemlet-length = 0.75
                            ef''8
                            [

                            ef''32

                            ef''32

                            ef''32

                            ef''32

                            \revert Staff.Stem.stemlet-length
                            ef''8
                            ]

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "8")
                        \times 2/3 {

                            \override Staff.Stem.stemlet-length = 0.75
                            ef''32
                            [

                            ef''32

                            ef''32

                            ef''32

                            ef''8

                            \revert Staff.Stem.stemlet-length
                            ef''8
                            ]

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "4")
                        \times 4/5 {
                            % [Voice 1 measure 5]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            ef''2

                            \override Staff.Stem.stemlet-length = 0.75
                            ef''16
                            [

                            ef''16

                            ef''16

                            \revert Staff.Stem.stemlet-length
                            ef''16
                            ]

                            ef''2

                        }
                        % [Voice 1 measure 6]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r4

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "8")
                        \times 4/5 {

                            \override Staff.Stem.stemlet-length = 0.75
                            ef''32
                            [

                            ef''32

                            ef''32

                            \revert Staff.Stem.stemlet-length
                            ef''32
                            ]

                            ef''4

                            ef''4

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "8")
                        \times 2/3 {
                            % [Voice 1 measure 7]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            ef''16.
                            [

                            ef''16.

                            ef''16

                            ef''16

                            \revert Staff.Stem.stemlet-length
                            ef''16
                            ]

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "4")
                        \times 2/3 {

                            ef''8.

                            ef''4

                            \override Staff.Stem.stemlet-length = 0.75
                            ef''16
                            [

                            ef''8

                            \revert Staff.Stem.stemlet-length
                            ef''8
                            ]

                        }

                        r4

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "8")
                        \times 2/3 {

                            \override Staff.Stem.stemlet-length = 0.75
                            r16
                            [

                            ef''16.

                            ef''16

                            ef''16

                            ef''16

                            \revert Staff.Stem.stemlet-length
                            ef''32
                            ]

                        }
                        % [Voice 1 measure 8]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r4

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "8")
                        \times 2/3 {

                            \override Staff.Stem.stemlet-length = 0.75
                            r16
                            [

                            ef''8

                            ef''32

                            ef''16

                            \revert Staff.Stem.stemlet-length
                            ef''16.
                            ]

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "8")
                        \times 2/3 {

                            \override Staff.Stem.stemlet-length = 0.75
                            r16
                            [

                            ef''8
                            ~

                            ef''32

                            ef''16

                            ef''16

                            \revert Staff.Stem.stemlet-length
                            ef''32
                            ]

                        }
                        % [Voice 1 measure 9]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        ef''4

                        \override Staff.Stem.stemlet-length = 0.75
                        r8
                        [

                        \revert Staff.Stem.stemlet-length
                        ef''8
                        ]

                        r4

                        ef''4
                        % [Voice 1 measure 10]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2
                        \bar "||"
                        % [Voice 1 measure 11]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

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
                        r4

                        <<

                            \context Voice = "Voice 2"
                            {

                                \voiceOne
                                \override Staff.Stem.stemlet-length = 0.75
                                af16
                                [

                                a''16

                                a''16

                                \revert Staff.Stem.stemlet-length
                                a''16
                                ]

                                \override Staff.Stem.stemlet-length = 0.75
                                ef'16
                                [

                                a''16

                                a''16

                                \revert Staff.Stem.stemlet-length
                                a''16
                                ]

                                \override Staff.Stem.stemlet-length = 0.75
                                d''16
                                [

                                a''16

                                a''16

                                \revert Staff.Stem.stemlet-length
                                a''16
                                ]

                            }

                            \context Voice = "intermittent_voice"
                            {

                                \voiceTwo
                                c'4

                                c'4

                                c'4

                            }

                        >>
                        \oneVoice

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "16")
                        \times 2/3 {
                            % [Voice 2 measure 2]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            af16
                            [

                            a''16

                            \revert Staff.Stem.stemlet-length
                            a''16
                            ]

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "16")
                        \times 2/3 {

                            \override Staff.Stem.stemlet-length = 0.75
                            a''16
                            [

                            ef'16

                            \revert Staff.Stem.stemlet-length
                            a''16
                            ]

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "16")
                        \times 2/3 {

                            \override Staff.Stem.stemlet-length = 0.75
                            a''16
                            [

                            a''16

                            \revert Staff.Stem.stemlet-length
                            d''16
                            ]

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "16")
                        \times 2/3 {

                            \override Staff.Stem.stemlet-length = 0.75
                            a''16
                            [

                            a''16

                            \revert Staff.Stem.stemlet-length
                            a''16
                            ]

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "8")
                        \times 2/3 {

                            \override Staff.Stem.stemlet-length = 0.75
                            af32
                            [

                            a''32

                            a''32

                            a''32

                            ef'32

                            a''32

                            a''32

                            a''32

                            d''32

                            a''32

                            a''32

                            \revert Staff.Stem.stemlet-length
                            a''32
                            ]

                        }
                        % [Voice 2 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r4

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "8")
                        \times 2/3 {

                            \override Staff.Stem.stemlet-length = 0.75
                            af32
                            [

                            a''32

                            a''32

                            a''32

                            ef'32

                            a''32

                            a''32

                            a''32

                            d''32

                            a''32

                            a''32

                            \revert Staff.Stem.stemlet-length
                            a''32
                            ]

                        }

                        \override Staff.Stem.stemlet-length = 0.75
                        af16
                        [

                        a''16

                        a''16

                        \revert Staff.Stem.stemlet-length
                        a''16
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        ef'16
                        [

                        a''16

                        a''16

                        \revert Staff.Stem.stemlet-length
                        a''16
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        d''16
                        [

                        a''16

                        a''16

                        \revert Staff.Stem.stemlet-length
                        a''16
                        ]

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "4")
                        \times 2/3 {
                            % [Voice 2 measure 4]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            af16
                            [

                            a''16

                            a''16

                            a''16

                            ef'16

                            a''16

                            a''16

                            a''16

                            d''16

                            a''16

                            a''16

                            \revert Staff.Stem.stemlet-length
                            a''16
                            ]

                        }

                        r4
                        % [Voice 2 measure 5]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        af16
                        [

                        a''16

                        a''16

                        \revert Staff.Stem.stemlet-length
                        a''16
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        ef'16
                        [

                        a''16

                        a''16

                        \revert Staff.Stem.stemlet-length
                        a''16
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        d''16
                        [

                        a''16

                        a''16

                        \revert Staff.Stem.stemlet-length
                        a''16
                        ]

                        r4

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "16")
                        \times 2/3 {
                            % [Voice 2 measure 6]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            af16
                            [

                            a''16

                            \revert Staff.Stem.stemlet-length
                            a''16
                            ]

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "16")
                        \times 2/3 {

                            \override Staff.Stem.stemlet-length = 0.75
                            a''16
                            [

                            ef'16

                            \revert Staff.Stem.stemlet-length
                            a''16
                            ]

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "16")
                        \times 2/3 {

                            \override Staff.Stem.stemlet-length = 0.75
                            a''16
                            [

                            a''16

                            \revert Staff.Stem.stemlet-length
                            d''16
                            ]

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "16")
                        \times 2/3 {

                            \override Staff.Stem.stemlet-length = 0.75
                            a''16
                            [

                            a''16

                            \revert Staff.Stem.stemlet-length
                            a''16
                            ]

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "8")
                        \times 2/3 {

                            \override Staff.Stem.stemlet-length = 0.75
                            af32
                            [

                            a''32

                            a''32

                            a''32

                            ef'32

                            a''32

                            a''32

                            a''32

                            d''32

                            a''32

                            a''32

                            \revert Staff.Stem.stemlet-length
                            a''32
                            ]

                        }
                        % [Voice 2 measure 7]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r4

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "8")
                        \times 2/3 {

                            \override Staff.Stem.stemlet-length = 0.75
                            af32
                            [

                            a''32

                            a''32

                            a''32

                            ef'32

                            a''32

                            a''32

                            a''32

                            d''32

                            a''32

                            a''32

                            \revert Staff.Stem.stemlet-length
                            a''32
                            ]

                        }

                        \override Staff.Stem.stemlet-length = 0.75
                        af16
                        [

                        a''16

                        a''16

                        \revert Staff.Stem.stemlet-length
                        a''16
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        ef'16
                        [

                        a''16

                        a''16

                        \revert Staff.Stem.stemlet-length
                        a''16
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        d''16
                        [

                        a''16

                        a''16

                        \revert Staff.Stem.stemlet-length
                        a''16
                        ]

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "4")
                        \times 2/3 {
                            % [Voice 2 measure 8]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            af16
                            [

                            a''16

                            a''16

                            a''16

                            ef'16

                            a''16

                            a''16

                            a''16

                            d''16

                            a''16

                            a''16

                            \revert Staff.Stem.stemlet-length
                            a''16
                            ]

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "8")
                        \times 2/3 {

                            \override Staff.Stem.stemlet-length = 0.75
                            af32
                            [

                            a''32

                            a''32

                            a''32

                            ef'32

                            a''32

                            a''32

                            a''32

                            d''32

                            a''32

                            a''32

                            \revert Staff.Stem.stemlet-length
                            a''32
                            ]

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "16")
                        \times 2/3 {
                            % [Voice 2 measure 9]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            af16
                            [

                            a''16

                            \revert Staff.Stem.stemlet-length
                            a''16
                            ]

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "16")
                        \times 2/3 {

                            \override Staff.Stem.stemlet-length = 0.75
                            a''16
                            [

                            ef'16

                            \revert Staff.Stem.stemlet-length
                            a''16
                            ]

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "16")
                        \times 2/3 {

                            \override Staff.Stem.stemlet-length = 0.75
                            a''16
                            [

                            a''16

                            \revert Staff.Stem.stemlet-length
                            d''16
                            ]

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "16")
                        \times 2/3 {

                            \override Staff.Stem.stemlet-length = 0.75
                            a''16
                            [

                            a''16

                            \revert Staff.Stem.stemlet-length
                            a''16
                            ]

                        }

                        r4

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "8")
                        \times 2/3 {

                            \override Staff.Stem.stemlet-length = 0.75
                            af32
                            [

                            a''32

                            a''32

                            a''32

                            ef'32

                            a''32

                            a''32

                            a''32

                            d''32

                            a''32

                            a''32

                            \revert Staff.Stem.stemlet-length
                            a''32
                            ]

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "8")
                        \times 2/3 {
                            % [Voice 2 measure 10]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            af32
                            [

                            a''32

                            a''32

                            a''32

                            ef'32

                            a''32

                            a''32

                            a''32

                            d''32

                            a''32

                            a''32

                            \revert Staff.Stem.stemlet-length
                            a''32
                            ]

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "32")
                        \times 2/3 {

                            \override Staff.Stem.stemlet-length = 0.75
                            af32
                            [

                            a''32

                            \revert Staff.Stem.stemlet-length
                            a''32
                            ]

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "32")
                        \times 2/3 {

                            \override Staff.Stem.stemlet-length = 0.75
                            a''32
                            [

                            ef'32

                            \revert Staff.Stem.stemlet-length
                            a''32
                            ]

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "32")
                        \times 2/3 {

                            \override Staff.Stem.stemlet-length = 0.75
                            a''32
                            [

                            a''32

                            \revert Staff.Stem.stemlet-length
                            d''32
                            ]

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "32")
                        \times 2/3 {

                            \override Staff.Stem.stemlet-length = 0.75
                            a''32
                            [

                            a''32

                            \revert Staff.Stem.stemlet-length
                            a''32
                            ]
                            \bar "||"

                        }
                        % [Voice 2 measure 11]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

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

        >>

    >>
