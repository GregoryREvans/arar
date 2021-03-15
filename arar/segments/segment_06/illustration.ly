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

                            \pitchedTrill
                            a'1
                            \p
                            \startTrillSpan b'

                            \times 4/5 {

                                \override Staff.Stem.stemlet-length = 0.75
                                gs''16
                                \ff
                                [
                                (
                                \stopTrillSpan

                                g''16

                                f'16

                                c''16

                                \revert Staff.Stem.stemlet-length
                                a'16
                                )
                                ]

                            }

                        }
                        % [Voice 1 measure 6]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \pitchedTrill
                        c''4
                        \mp
                        ~
                        \startTrillSpan d''

                        \override Staff.Stem.stemlet-length = 0.75
                        c''8
                        [

                        ds'''32
                        \ff
                        (
                        \stopTrillSpan

                        f''32

                        gs''32

                        \revert Staff.Stem.stemlet-length
                        cs''32
                        ]
                        % [Voice 1 measure 7]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        a'8.
                        \mf
                        )
                        [

                        \revert Staff.Stem.stemlet-length
                        g'16
                        ~
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        g'8
                        [

                        \revert Staff.Stem.stemlet-length
                        f''8
                        ~
                        ]

                        f''4

                        \times 2/3 {
                            % [Voice 1 measure 8]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            gs'8
                            [
                            (

                            d'8

                            \revert Staff.Stem.stemlet-length
                            as'8
                            )
                            ]

                        }

                        \pitchedTrill
                        d'2.
                        \f
                        \startTrillSpan gs'

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            % [Voice 1 measure 9]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \pitchedTrill
                            gs'1
                            \ff
                            - \tweak stencil #constante-hairpin
                            \<
                            \startTrillSpan a'
                            \stopTrillSpan

                            cs'4
                            \>
                            (
                            \stopTrillSpan

                            as'4

                        }
                        % [Voice 1 measure 10]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        gs''4

                        f'''4

                        ds'''4
                        )

                        \override Staff.Stem.stemlet-length = 0.75
                        a'''8.
                        \p
                        [
                        (

                        \revert Staff.Stem.stemlet-length
                        gs''16
                        ~
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        gs''8
                        [

                        \revert Staff.Stem.stemlet-length
                        b'8
                        ~
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        b'16
                        [

                        \revert Staff.Stem.stemlet-length
                        fs'8.
                        )
                        ]
                        % [Voice 1 measure 11]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \pitchedTrill
                        a'1
                        \sfp
                        \startTrillSpan b'

                        \times 4/5 {

                            \override Staff.Stem.stemlet-length = 0.75
                            gs''16
                            \f
                            [
                            (
                            \stopTrillSpan

                            g''16

                            f'16

                            c''16

                            \revert Staff.Stem.stemlet-length
                            a'16
                            )
                            ]

                        }

                        \times 4/7 {
                            % [Voice 1 measure 12]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            f''1.
                            :32
                            \p
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
                            f''4
                            :32
                            \f

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            % [Voice 1 measure 13]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            f''2.
                            :32
                            \p
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
                            f''4
                            :32
                            \f

                        }

                        \times 4/5 {
                            % [Voice 1 measure 14]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            e''2
                            :32
                            \p
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
                            e''8
                            :32
                            \f

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            % [Voice 1 measure 15]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            cs''2.
                            :32
                            \p
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
                            cs''4
                            :32
                            \f

                        }
                        % [Voice 1 measure 16]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        f''4
                        \p

                        r8

                        gs''8

                        r4

                        cs''4

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 5/8 {
                            % [Voice 1 measure 17]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r2

                            \times 2/3 {

                                a'4
                                - \accent
                                (

                                d'4

                                e'4
                                )

                            }

                            r4

                            \override Staff.Stem.stemlet-length = 0.75
                            cs''8.
                            [
                            (

                            c'''8.

                            cs'''8.

                            \revert Staff.Stem.stemlet-length
                            a''8.
                            )
                            ]

                        }

                        \times 2/3 {
                            % [Voice 1 measure 18]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            f'''16
                            \f
                            - \accent
                            [
                            (

                            f''16

                            gs''16

                            cs''16

                            a'16

                            \revert Staff.Stem.stemlet-length
                            d'16
                            )
                            ]

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/5 {

                            \override Staff.Stem.stemlet-length = 0.75
                            e'8
                            [
                            (

                            cs''8
                            - \accent

                            c'''8

                            cs'''8

                            \revert Staff.Stem.stemlet-length
                            a''8
                            )
                            ]

                        }

                        f'''8
                        ~

                        \override Staff.Stem.stemlet-length = 0.75
                        f'''8
                        [

                        \revert Staff.Stem.stemlet-length
                        f''8
                        ]
                        % [Voice 1 measure 19]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        c'''2
                        :32
                        \p
                        - \tweak stencil #abjad-flared-hairpin
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
                        c'''4
                        :32
                        \f

                        \times 4/7 {
                            % [Voice 1 measure 20]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            c'''2.
                            :32
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
                            c'''8
                            :32
                            \p

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            % [Voice 1 measure 21]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \pitchedTrill
                            c''2.
                            \f
                            \startTrillSpan d''

                            \override Staff.Stem.stemlet-length = 0.75
                            ds'''16
                            [
                            (
                            \stopTrillSpan

                            f''16

                            gs''16

                            \revert Staff.Stem.stemlet-length
                            cs''16
                            )
                            ]

                        }
                        % [Voice 1 measure 22]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        a'4
                        \p
                        (

                        g'4

                        f''2
                        )

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 10/24 {
                            % [Voice 1 measure 23]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            gs'4
                            (

                            d'4

                            as'4
                            )

                        }

                        \pitchedTrill
                        d'8.
                        ~
                        \startTrillSpan gs'

                        d'2.
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
                            \pitchedTrill
                            f'1
                            \sfp
                            \startTrillSpan a'

                            \times 4/5 {

                                \override Staff.Stem.stemlet-length = 0.75
                                a'16
                                \ff
                                [
                                \stopTrillSpan

                                e''16

                                a'16

                                d'16

                                \revert Staff.Stem.stemlet-length
                                cs'16
                                ]

                            }

                        }
                        % [Voice 2 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \pitchedTrill
                        cs'2.
                        \sfp
                        \startTrillSpan d'

                        \override Staff.Stem.stemlet-length = 0.75
                        as'16
                        \ff
                        [
                        \stopTrillSpan

                        gs''16

                        ds'16

                        \revert Staff.Stem.stemlet-length
                        f''16
                        ]

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 5/8 {
                            % [Voice 2 measure 3]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            cs''2
                            \pp

                            a'2

                            \pitchedTrill
                            fs'1
                            \sfp
                            \startTrillSpan a'

                        }

                        \times 2/3 {
                            % [Voice 2 measure 4]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            ds'8
                            \f
                            [
                            \stopTrillSpan

                            d''8

                            \revert Staff.Stem.stemlet-length
                            d'8
                            ]

                        }

                        \pitchedTrill
                        e'2.
                        \p
                        \startTrillSpan as'
                        % [Voice 2 measure 5]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \pitchedTrill
                        a'2
                        \startTrillSpan b'
                        \stopTrillSpan

                        \override Staff.Stem.stemlet-length = 0.75
                        ds'''8
                        \mp
                        [
                        \stopTrillSpan

                        \revert Staff.Stem.stemlet-length
                        gs''8
                        ]
                        % [Voice 2 measure 6]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2

                        \times 4/5 {
                            % [Voice 2 measure 7]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            r8.

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            <e c' f' af' b' e''>2.
                            :32
                            \f
                            \>
                            \glissando                                         %! abjad.glissando(7)
                            - \abjad-solid-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright
                                bis. \hspace #0.5 }
                            - \tweak staff-padding 4.5
                            \startTextSpan

                        }

                        \times 4/7 {
                            % [Voice 2 measure 8]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \hide NoteHead                                     %! abjad.glissando(1)
                            \override Accidental.stencil = ##f                 %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t          %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t                %! abjad.glissando(1)
                            <e c' f' af' b' e''>1
                            :32
                            :32
                            \glissando                                         %! abjad.glissando(7)

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            \revert Accidental.stencil                         %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip                  %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers                        %! abjad.glissando(6)
                            \undo \hide NoteHead                               %! abjad.glissando(6)
                            \hide NoteHead                                     %! abjad.glissando(1)
                            \override Accidental.stencil = ##f                 %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t          %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t                %! abjad.glissando(1)
                            \revert Accidental.stencil                         %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip                  %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers                        %! abjad.glissando(6)
                            \undo \hide NoteHead                               %! abjad.glissando(6)
                            <e c' f' af' b' e''>4.
                            :32
                            :32
                            \p

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            r4.
                            \stopTextSpan

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 10/17 {
                            % [Voice 2 measure 9]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            r4.

                            \once \override Staff.Tie.transparent = ##t
                            \once \override Dots.staff-position = #1.75
                            <e d' f' bf' b' e''>1..
                            :32
                            \f
                            - \tweak stencil #constante-hairpin
                            \<
                            \glissando                                         %! abjad.glissando(7)
                            - \abjad-solid-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright
                                bis. \hspace #0.5 }
                            - \tweak staff-padding 4.5
                            \startTextSpan

                        }
                        % [Voice 2 measure 10]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        \hide NoteHead                                         %! abjad.glissando(1)
                        \override Accidental.stencil = ##f                     %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t              %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t                    %! abjad.glissando(1)
                        <e d' f' bf' b' e''>2.
                        :32
                        :32
                        \>
                        \glissando                                             %! abjad.glissando(7)

                        \once \override Staff.Tie.transparent = ##t
                        \once \override Dots.staff-position = #1.75
                        \revert Accidental.stencil                             %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip                      %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers                            %! abjad.glissando(6)
                        \undo \hide NoteHead                                   %! abjad.glissando(6)
                        \hide NoteHead                                         %! abjad.glissando(1)
                        \override Accidental.stencil = ##f                     %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t              %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t                    %! abjad.glissando(1)
                        \revert Accidental.stencil                             %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip                      %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers                            %! abjad.glissando(6)
                        \undo \hide NoteHead                                   %! abjad.glissando(6)
                        <e d' f' bf' b' e''>2.
                        :32
                        :32
                        \p

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            % [Voice 2 measure 11]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            af2
                            \stopTextSpan

                            \override Staff.Stem.stemlet-length = 0.75
                            ef'8
                            \mf
                            [

                            a''8

                            a''8

                            \revert Staff.Stem.stemlet-length
                            a''8
                            ]

                            d''2
                            \p

                        }

                        \times 2/3 {
                            % [Voice 2 measure 12]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            <e cs' f' g' b' e''>8
                            \ff
                            - \accent
                            [

                            <e cs' f' g' b' e''>8

                            <e cs' f' g' b' e''>8

                            \revert Staff.Stem.stemlet-length
                            <e cs' f' g' b' e''>8
                            ]

                            <d' fs' e''>2
                            \p

                            <cs' c''>2

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/5 {
                            % [Voice 2 measure 13]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            a2

                            \override Staff.Stem.stemlet-length = 0.75
                            e'16
                            \mf
                            - \accent
                            [

                            as''16

                            as''16

                            \revert Staff.Stem.stemlet-length
                            as''16
                            ]

                            ds''2
                            \p

                        }

                        \times 4/5 {
                            % [Voice 2 measure 14]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            <e cs' f' g' b' e''>32
                            \ff
                            [

                            <e cs' f' g' b' e''>32

                            <e cs' f' g' b' e''>32
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            <e cs' f' g' b' e''>32
                            ]

                            <fs' e''>4
                            \p

                            <cs' c''>4

                        }
                        % [Voice 2 measure 15]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        gs'8
                        [

                        \revert Staff.Stem.stemlet-length
                        f''8
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        e'''8
                        [

                        as'''16.

                        \revert Staff.Stem.stemlet-length
                        d'32
                        ~
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        d'16
                        [

                        a'16
                        ~

                        a'32

                        \revert Staff.Stem.stemlet-length
                        g'16.
                        ]

                        \times 4/5 {
                            % [Voice 2 measure 16]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \pitchedTrill
                            f'1
                            \sfp
                            \startTrillSpan a'

                            \times 4/5 {

                                \override Staff.Stem.stemlet-length = 0.75
                                a'16
                                \f
                                [
                                \stopTrillSpan

                                e''16

                                a'16

                                d'16

                                \revert Staff.Stem.stemlet-length
                                cs'16
                                ]

                            }

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 5/8 {
                            % [Voice 2 measure 17]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \pitchedTrill
                            cs'1.
                            \p
                            \startTrillSpan d'

                            \override Staff.Stem.stemlet-length = 0.75
                            as'8
                            [
                            \stopTrillSpan

                            gs''8

                            ds'8

                            \revert Staff.Stem.stemlet-length
                            f''8
                            ]

                        }
                        % [Voice 2 measure 18]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        cs''4
                        \f

                        a'4

                        \pitchedTrill
                        fs'2
                        \startTrillSpan a'

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7 {
                            % [Voice 2 measure 19]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            c'4.
                            \p
                            \stopTrillSpan

                            \override Staff.Stem.stemlet-length = 0.75
                            g'32
                            \f
                            - \accent
                            [

                            a'32

                            ef'32

                            \revert Staff.Stem.stemlet-length
                            a''32
                            ]

                            d''4.
                            \p

                        }

                        \times 4/7 {
                            % [Voice 2 measure 20]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'''32
                            \f
                            [

                            g''32

                            cs''32
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            fs'32
                            ]

                            a4.

                            <e cs' f' g' b' e''>4.

                        }

                        \times 2/3 {
                            % [Voice 2 measure 21]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            <ef' af'>2
                            \mf

                            \override Staff.Stem.stemlet-length = 0.75
                            d''32
                            \f
                            [

                            cs'''32

                            a''32
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            af''32
                            \mp
                            ]

                            f''2

                        }

                        \times 2/3 {
                            % [Voice 2 measure 22]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            ds'8
                            \p
                            [

                            d''8

                            \revert Staff.Stem.stemlet-length
                            d'8
                            ]

                        }

                        \pitchedTrill
                        e'2.
                        \startTrillSpan as'

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            % [Voice 2 measure 23]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \pitchedTrill
                            a'1
                            \startTrillSpan b'
                            \stopTrillSpan

                            ds'''4
                            \stopTrillSpan

                            gs''4
                            \bar "||"

                        }

                    }

                }

            }

        >>

    >>
}                                                                              %! abjad.LilyPondFile._get_formatted_blocks()