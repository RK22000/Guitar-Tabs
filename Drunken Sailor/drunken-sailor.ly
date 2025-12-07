\version "2.24.0"

\header {
  title = "Drunken Sailor"
}

notes = {
    \time 4/4
    \tempo 4 = 160
    \relative c' {
        e4
        e8 e8 e4
        e8 e8 e4
        a, c  e
        d
        d8 d8 d4
        d8 d8 d4
        g, b d
        e4
        e8 e8 e4
        e8 e8 e4
        fis g a
        g e d b
        a2 a
    }
    \bar "|."
}

\score {
    \new StaffGroup <<
        \new Staff { \notes }
        \new TabStaff { \notes }
    >>
    \layout { } % This says to compile the pdf layout
    \midi { } % This says to compile the midi file
}