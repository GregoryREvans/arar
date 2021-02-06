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
                        \clef "treble"
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat 
                        ef'1
                        ^ \markup {
                            \center-align
                                +0
                            }
                        % [Voice 1 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat 
                        bf'4
                        ^ \markup {
                            \center-align
                                +2
                            }

                        r4

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \flat-one-syntonic-comma-up 
                        cf''4
                        ^ \markup {
                            \center-align
                                +14
                            }
                        ~
                        % [Voice 1 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \flat-one-syntonic-comma-up 
                        cf''1

                        r4
                        % [Voice 1 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat 
                        ef''2.
                        ^ \markup {
                            \center-align
                                +0
                            }
                        ~

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "2")
                        \times 2/3 {
                            % [Voice 1 measure 5]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat 
                            ef''4

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \flat-one-syntonic-comma-up 
                            gf''2
                            ^ \markup {
                                \center-align
                                    +16
                                }

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup {
                                \concat
                                    {
                                        \one-seventeen-limit-schisma-down 
                                        \hspace #0.125
                                        \two-tridecimal-third-tone-up 
                                    }
                                }
                            f''2.
                            ^ \markup {
                                \center-align
                                    F♯+26
                                }

                        }
                        % [Voice 1 measure 6]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r4

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat 
                        ef''2
                        ^ \markup {
                            \center-align
                                +0
                            }
                        % [Voice 1 measure 7]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \natural-one-syntonic-comma-down 
                        c''2
                        ^ \markup {
                            \center-align
                                -16
                            }

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-tridecimal-third-tone-down 
                        c''4
                        ^ \markup {
                            \center-align
                                B+41
                            }

                        r4

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat 
                        ef'4
                        ^ \markup {
                            \center-align
                                +0
                            }
                        % [Voice 1 measure 8]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r4

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat 
                        ef''2
                        ^ \markup {
                            \center-align
                                +0
                            }
                        % [Voice 1 measure 9]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \flat-one-syntonic-comma-up 
                        gf''1
                        ^ \markup {
                            \center-align
                                +16
                            }
                        % [Voice 1 measure 10]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2
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
                        % [Voice 2 measure 1]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \set Staff.shortInstrumentName =                       %! applying staff names and clefs
                        \markup { gt. }                                        %! applying staff names and clefs
                        \set Staff.instrumentName =                            %! applying staff names and clefs
                        "Guitar"                                               %! applying staff names and clefs
                        \clef "treble"
                        r4

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat 
                        ef''2.
                        ^ \markup {
                            \center-align
                                +0
                            }
                        ~
                        % [Voice 2 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat 
                        ef''4

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \natural-one-syntonic-comma-down 
                        c''2
                        ^ \markup {
                            \center-align
                                -16
                            }
                        % [Voice 2 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r4

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-tridecimal-third-tone-down 
                        c''2
                        ^ \markup {
                            \center-align
                                B+41
                            }

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup {
                            \concat
                                {
                                    \one-tridecimal-third-tone-up 
                                    \hspace #0.125
                                    \one-septimal-comma-down 
                                    \hspace #0.125
                                    \abjad-flat 
                                }
                            }
                        cf''2
                        ^ \markup {
                            \center-align
                                +30
                            }
                        % [Voice 2 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat 
                        ef'2
                        ^ \markup {
                            \center-align
                                +0
                            }

                        r4
                        % [Voice 2 measure 5]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \natural-one-syntonic-comma-down 
                        g''4
                        ^ \markup {
                            \center-align
                                -14
                            }
                        ~

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \natural-one-syntonic-comma-down 
                        g''8
                        [

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup {
                            \concat
                                {
                                    \two-tridecimal-third-tone-down 
                                    \hspace #0.125
                                    \one-septimal-comma-up 
                                    \hspace #0.125
                                    \natural-one-syntonic-comma-up 
                                }
                            }
                        g''8
                        ^ \markup {
                            \center-align
                                F♯+26
                            }
                        ~
                        ]

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup {
                            \concat
                                {
                                    \two-tridecimal-third-tone-down 
                                    \hspace #0.125
                                    \one-septimal-comma-up 
                                    \hspace #0.125
                                    \natural-one-syntonic-comma-up 
                                }
                            }
                        g''4

                        r4
                        % [Voice 2 measure 6]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat 
                        ef'2
                        ^ \markup {
                            \center-align
                                +0
                            }

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat 
                        bf'4
                        ^ \markup {
                            \center-align
                                +2
                            }
                        % [Voice 2 measure 7]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r4

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \flat-one-syntonic-comma-up 
                        cf''4
                        ^ \markup {
                            \center-align
                                +14
                            }
                        ~

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 3) "4")
                        \times 3/4 {

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \flat-one-syntonic-comma-up 
                            cf''4

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup {
                                \concat
                                    {
                                        \one-tridecimal-third-tone-up 
                                        \hspace #0.125
                                        \one-septimal-comma-down 
                                        \hspace #0.125
                                        \abjad-flat 
                                    }
                                }
                            cf''2.
                            ^ \markup {
                                \center-align
                                    +30
                                }
                            ~

                        }
                        % [Voice 2 measure 8]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup {
                            \concat
                                {
                                    \one-tridecimal-third-tone-up 
                                    \hspace #0.125
                                    \one-septimal-comma-down 
                                    \hspace #0.125
                                    \abjad-flat 
                                }
                            }
                        cf''2.
                        % [Voice 2 measure 9]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \natural-one-syntonic-comma-down 
                        g''2
                        ^ \markup {
                            \center-align
                                -14
                            }

                        r4

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup {
                            \concat
                                {
                                    \two-tridecimal-third-tone-down 
                                    \hspace #0.125
                                    \one-septimal-comma-up 
                                    \hspace #0.125
                                    \natural-one-syntonic-comma-up 
                                }
                            }
                        e''4
                        ^ \markup {
                            \center-align
                                E♭+26
                            }
                        ~
                        % [Voice 2 measure 10]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup {
                            \concat
                                {
                                    \two-tridecimal-third-tone-down 
                                    \hspace #0.125
                                    \one-septimal-comma-up 
                                    \hspace #0.125
                                    \natural-one-syntonic-comma-up 
                                }
                            }
                        e''2
                        \bar "||"

                    }

                }

            }

        >>

    >>
}                                                                              %! abjad.LilyPondFile._get_formatted_blocks()