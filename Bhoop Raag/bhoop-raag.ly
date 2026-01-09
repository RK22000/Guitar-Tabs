\version "2.24.2"
\include "carnatic/carnatic.ly"

\header {
    title = "Bhoop Raag"
}
% Practice piece with Jay
    

% sa ri ga ma pa da ni sa
% c  d  e  f  g  a  b  c'

% bhoop raag notes

part_a = {
    a4 c a g e d c d e2 e4 d e g a
}
part_b = {
    e e g a c c c d c
}
part_c = {
    e d c e d c a g c a g e d c
}
notes = \relative c' {
    \tempo 4 = 100
    \part_a \bar ".|"
    \part_a \bar ".|"
    \part_b \bar ".|"
    \part_b \bar ".|"
    \part_c \bar ".|"
    \part_a \bar ".|"
    \part_a \bar ".|"
}

\score {
    <<
        % \new Staff { \notes }
        \new NoteNames { \notes }
        \new TabStaff { \notes }
    >>
    \layout { }
    \midi { }
}