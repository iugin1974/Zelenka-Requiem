\relative c {
  c1 \f | % 2
  \clef "treble" r4 g''4 -! as4 -! \clef "bass" c,4 | % 3
  <<
    {
      r2 f2 | % 4
      f4 es4 \clef "bass" s2 |
    }
    \\
    {
      es2 d8 c8 h8 a8 |
      h4 c4 g2 |
    }
  >>
  as2 ~ as8 g8 f8 es8 | % 6
  f2. es4 | % 7
  as2 a2 | % 8
  d,2 g4 g,4 | % 9
  \clef "treble"
  <<
    { r4 b''2 b4 | } \\
    { r2 g2 } \\
    {} \\
    { r2 r4 e4 }
  >>
  \clef "bass" c,2 f2 | % 11
  \clef "treble"
  <<
    { r4 as'2 as4 | } \\
    { r2 f2 } \\
    {} \\
    { r2 r4 d }
  >>
  \clef "bass" b,2 es2 | % 13
  r4 e4 f2 | % 14
  g4 c,4 g2 | % 15
  c8 \p d8 es8 c'8 f,16 g16 as8 b8 b,8 | % 16
  es16 f16 g8 as8 as,8 d16 es16 f8 g8 g,8 | % 17
  c8 f8 g8 g,8 c4 c'8 b8 | % 18
  as8 es8 f4 g8 a8 h8 g8 | % 19
  c,16 d16 es8 f8 f,8 b16 c16 d8 es8 es,8 |
  \barNumberCheck #20
  a8 b16 c16 d8 d,8 g4 r16 g'16 f16 es16 | % 21
  f8 b8 f8 f,8 b4 r16 h'16 a16 g16 | % 22
  as 8 f8 g8 g,8 c8 d8 es8 c'8 | % 23
  f,16 g16 as8 b8 b,8 es16 f16 g8 as8 as,8 | % 24
  d16 es16 f8 g8 g,8 c8 c'8 ~ c8 b16 as16 | % 25
  g16 as16 b8 ~ b8 as16 g16 f16 g16 as8 ~ as8 g16 f16
  | % 26
  es8 f8 g8 g,8 c8 c'4 \p b16 as16 | % 27
  g16 as16 b4 as16 g16 f16 g16 as4 g16 f16 | % 28
  es8 f8 g8 g,8 c8 f8 ( g8 ) g,8 | % 29
  c1 \fermata \bar "|."
}