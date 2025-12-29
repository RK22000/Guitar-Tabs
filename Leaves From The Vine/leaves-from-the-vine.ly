\header {
    title = "Leaves From The Vine"
}
notes = {
    \time 3/4
    \tempo 4 = 140
    \relative c' {
        d2 d4 c8 b2~ b8
        d4 d c b2
        g2 b4 b4 c4 b4 a2
        b4 b4 a4 g4 g2~ g2.
        d'8 d4~ d8 d4 c4 b2
        d4 d c b2~ b2.
        b2 b4 a4 g2
        b4 b4 a4 g2
    }
    \bar "|."
}

poem_lyrics = \lyricmode {
    Leaves from the vine, 
    fal -- ling so slow.
    Like fra -- gile ti -- ny shells,
    drif -- ting in the foam.
    Lit -- tle sol -- dier boy,
    come mar -- ching home.
    Brave sol -- dier boy,
    comes mar -- ching home.
}

\score {
    <<
        <<
            \new Voice = "melody" { \notes }
            \new Lyrics \with {
                \override LyricText.font-size = #-3
            } \lyricsto "melody" \poem_lyrics
        >>
        \new TabStaff { \notes }
    >>
    \layout { }
    \midi { }
}