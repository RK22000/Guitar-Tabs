\version "2.24.0"

\header {
  title = "Drunken Sailor"
}

what_do_we_do = {
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
}

lyrics_what_do_we_do = \lyricmode {
    what
    shall we do
    with a drun --
    ken sai -- lor
    what
    shall we do
    with a drun --
    ken sai -- lor
    what
    shall we do
    with a drun --
    ken sai -- lor
    ear -- ly in the
    mor -- ning
}


notes_k = {
    \time 4/4
    \tempo 4 = 160
    \what_do_we_do
    \bar "|."
}

\score {
    \new StaffGroup <<
        \new Staff <<
            \new Voice = "mel" \notes_k
            \new Lyrics \with {
                \override LyricText.font-size = #-3
            }
            \lyricsto mel \lyrics_what_do_we_do
        >>
        \new TabStaff { \notes_k }
    >>
    \layout { } % This says to compile the pdf layout
    \midi { } % This says to compile the midi file
}