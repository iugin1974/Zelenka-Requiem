\version "2.24.1"
\language "deutsch"
\include "Cover.ily"
\include "Commons.ily"
#(set-global-staff-size 15)

\paper {
  markup-system-spacing.padding = #5
  scoreTitleMarkup = \markup {
    \column {
      \fill-line { \fontsize #4 \bold \fromproperty #'header:piece }
      \fill-line { \fontsize #2 \bold \fromproperty #'header:instrument }
      \line { \hspace #5 { \fromproperty #'header:meter }}
    }
  }
}

\book {
  \bookOutputName "Requiem - Violine 1"

  \bookpart {
    \header {
      title = \markup { \fromproperty #'header:myTitle }
      instrument = "Partitur"
    }
    \markup \null
  } %ends titling

  \bookpart {
    #(define prefix "01/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
        \new StaffGroup <<
          \new Staff \with \tbnIvn
          \new Voice = "TromboneI"
          << \clef "alto" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Trombone1.ily") >>

          \new Staff \with \tbnIIvn
          \new Voice = "TromboneII"
          << \clef "tenor" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Trombone2.ily") >>
        >>

        \new ChoirStaff <<
          \new Staff \with \svn
          \new Voice = "SopranM"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "SopranM.ily") >>
          \new Lyrics \lyricsto "SopranM" \include #(string-append prefix "SopranT.ily")

          \new Staff \with \avn
          \new Voice = "AltM"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "AltM.ily") >>
          \new Lyrics \lyricsto "AltM" \include #(string-append prefix "AltT.ily")

          \new Staff \with \tvn
          \new Voice = "TenorM"
          << \clef "treble_8" \include #(string-append prefix "Global.ily") \include #(string-append prefix "TenorM.ily") >>
          \new Lyrics \lyricsto "TenorM" \include #(string-append prefix "TenorT.ily")

          \new Staff \with \bvn
          \new Voice = "BassM"
          << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "BassM.ily") >>
          \new Lyrics \lyricsto "BassM" \include #(string-append prefix "BassT.ily")
        >>


        \new StaffGroup <<
          \new Staff \with \vlIvn
          \new Voice = "Violine1"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine1.ily") >>

          \new Staff \with \vlIIvn
          \new Voice = "Violine2"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine2.ily") >>
        >>

        \new PianoStaff <<
          \new Staff << \include #(string-append prefix "Global.ily") \include #(string-append prefix "RH.ily") >>
          \new Staff
          <<
            \clef "bass" \include #(string-append prefix "Global.ily")
            \new Voice { \include #(string-append prefix "Violoncello.ily") }
          >>
        >>
        \new FiguredBass { \include #(string-append prefix "Continuo.ily") }
      >>
    }
  }


  \bookpart {
    #(define prefix "02/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
        \new ChoirStaff <<
          \new Staff \with \svn
          \new Voice = "SopranM"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "SopranM.ily") >>
          \new Lyrics \lyricsto "SopranM" \include #(string-append prefix "SopranT.ily")

          \new Staff \with \avn
          \new Voice = "AltM"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "AltM.ily") >>
          \new Lyrics \lyricsto "AltM" \include #(string-append prefix "AltT.ily")

          \new Staff \with \tvn
          \new Voice = "TenorM"
          << \clef "treble_8" \include #(string-append prefix "Global.ily") \include #(string-append prefix "TenorM.ily") >>
          \new Lyrics \lyricsto "TenorM" \include #(string-append prefix "TenorT.ily")

          \new Staff \with \bvn
          \new Voice = "BassM"
          << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "BassM.ily") >>
          \new Lyrics \lyricsto "BassM" \include #(string-append prefix "BassT.ily")
        >>


        \new StaffGroup <<
          \new Staff \with \vlIvn
          \new Voice = "Violine1"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine1.ily") >>

          \new Staff \with \vlIIvn
          \new Voice = "Violine2"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine2.ily") >>
        >>

        \new PianoStaff <<
          \new Staff << \include #(string-append prefix "Global.ily") \include #(string-append prefix "RH.ily") >>
          \new Staff
          <<
            \clef "bass" \include #(string-append prefix "Global.ily")
            \new Voice { \include #(string-append prefix "Violoncello.ily") }
          >>
        >>
        \new FiguredBass { \include #(string-append prefix "Continuo.ily") }
      >>
    }
  }


  \bookpart {
    #(define prefix "03/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
        \new StaffGroup <<
          \new Staff \with \tbnIvn
          \new Voice = "TromboneI"
          << \clef "alto" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Trombone1.ily") >>

          \new Staff \with \tbnIIvn
          \new Voice = "TromboneII"
          << \clef "tenor" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Trombone2.ily") >>
        >>

        \new ChoirStaff <<
          \new Staff \with \svn
          \new Voice = "SopranM"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "SopranM.ily") >>
          \new Lyrics \lyricsto "SopranM" \include #(string-append prefix "SopranT.ily")

          \new Staff \with \avn
          \new Voice = "AltM"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "AltM.ily") >>
          \new Lyrics \lyricsto "AltM" \include #(string-append prefix "AltT.ily")

          \new Staff \with \tvn
          \new Voice = "TenorM"
          << \clef "treble_8" \include #(string-append prefix "Global.ily") \include #(string-append prefix "TenorM.ily") >>
          \new Lyrics \lyricsto "TenorM" \include #(string-append prefix "TenorT.ily")

          \new Staff \with \bvn
          \new Voice = "BassM"
          << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "BassM.ily") >>
          \new Lyrics \lyricsto "BassM" \include #(string-append prefix "BassT.ily")
        >>

        \new StaffGroup <<
          \new Staff \with \vlIvn
          \new Voice = "Violine1"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine1.ily") >>

          \new Staff \with \vlIIvn
          \new Voice = "Violine2"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine2.ily") >>
        >>

        \new PianoStaff <<
          \new Staff << \include #(string-append prefix "Global.ily") \include #(string-append prefix "RH.ily") >>
          \new Staff
          <<
            \clef "bass" \include #(string-append prefix "Global.ily")
            \new Voice { \include #(string-append prefix "Violoncello.ily") }
          >>
        >>
        \new FiguredBass { \include #(string-append prefix "Continuo.ily") }
      >>
    }
  }



  \bookpart {
    #(define prefix "04/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<

        \new ChoirStaff <<
          \new Staff \with \svn
          \new Voice = "SopranM"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "SopranM.ily") >>
          \new Lyrics \lyricsto "SopranM" \include #(string-append prefix "SopranT.ily")

          \new Staff \with \avn
          \new Voice = "AltM"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "AltM.ily") >>
          \new Lyrics \lyricsto "AltM" \include #(string-append prefix "AltT.ily")
        >>

        \new StaffGroup <<
          \new Staff \with \vlIvn
          \new Voice = "Violine1"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine1.ily") >>

          \new Staff \with \vlIIvn
          \new Voice = "Violine2"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine2.ily") >>
        >>

        \new PianoStaff <<
          \new Staff << \include #(string-append prefix "Global.ily") \include #(string-append prefix "RH.ily") >>
          \new Staff
          <<
            \clef "bass" \include #(string-append prefix "Global.ily")
            \new Voice { \include #(string-append prefix "Violoncello.ily") }
          >>
        >>
        \new FiguredBass { \include #(string-append prefix "Continuo.ily") }
      >>
    }
    \markup{\huge{Kyrie da capo}}
  }


  \bookpart {
    #(define prefix "05/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
        \new StaffGroup <<
          \new Staff \with \tbnIvn
          \new Voice = "TromboneI"
          << \clef "alto" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Trombone1.ily") >>

          \new Staff \with \tbnIIvn
          \new Voice = "TromboneII"
          << \clef "tenor" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Trombone2.ily") >>

          \new Staff \with \tbnIIIvn
          \new Voice = "TromboneIII"
          << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Trombone3.ily") >>
        >>

        \new ChoirStaff <<
          \new Staff \with \svn
          \new Voice = "SopranM"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "SopranM.ily") >>
          \new Lyrics \lyricsto "SopranM" \include #(string-append prefix "SopranT.ily")

          \new Staff \with \avn
          \new Voice = "AltM"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "AltM.ily") >>
          \new Lyrics \lyricsto "AltM" \include #(string-append prefix "AltT.ily")

          \new Staff \with \tvn
          \new Voice = "TenorM"
          << \clef "treble_8" \include #(string-append prefix "Global.ily") \include #(string-append prefix "TenorM.ily") >>
          \new Lyrics \lyricsto "TenorM" \include #(string-append prefix "TenorT.ily")

          \new Staff \with \bvn
          \new Voice = "BassM"
          << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "BassM.ily") >>
          \new Lyrics \lyricsto "BassM" \include #(string-append prefix "BassT.ily")
        >>

        \new StaffGroup <<
          \new Staff \with \vlIvn
          \new Voice = "Violine1"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine1.ily") >>

          \new Staff \with \vlIIvn
          \new Voice = "Violine2"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine2.ily") >>

          \new Staff \with \vlavn
          \new Voice = "Viola"
          << \clef "alto" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Viola.ily") >>
        >>

        \new PianoStaff <<
          \new Staff << \include #(string-append prefix "Global.ily") \include #(string-append prefix "RH.ily") >>
          \new Staff
          <<
            \clef "bass" \include #(string-append prefix "Global.ily")
            \new Voice { \include #(string-append prefix "Violoncello.ily") }
          >>
        >>
        \new FiguredBass { \include #(string-append prefix "Continuo.ily") }
      >>
    }
  }


  \bookpart {
    #(define prefix "06/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
        \new ChoirStaff <<
          \new Staff \with \svn
          \new Voice = "SopranM"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "SopranM.ily") >>
          \new Lyrics \lyricsto "SopranM" \include #(string-append prefix "SopranT.ily")

          \new Staff \with \tvn
          \new Voice = "TenorM"
          << \clef "treble_8" \include #(string-append prefix "Global.ily") \include #(string-append prefix "TenorM.ily") >>
          \new Lyrics \lyricsto "TenorM" \include #(string-append prefix "TenorT.ily")
        >>

        \new StaffGroup <<
          \new Staff \with \vlIvn
          \new Voice = "Violine1"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine1.ily") >>

          \new Staff \with \vlIIvn
          \new Voice = "Violine2"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine2.ily") >>

          \new Staff \with \vlavn
          \new Voice = "Viola"
          << \clef "alto" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Viola.ily") >>
        >>

        \new PianoStaff <<
          \new Staff << \include #(string-append prefix "Global.ily") \include #(string-append prefix "RH.ily") >>
          \new Staff
          <<
            \clef "bass" \include #(string-append prefix "Global.ily")
            \new Voice { \include #(string-append prefix "Violoncello.ily") }
          >>
        >>
        \new FiguredBass { \include #(string-append prefix "Continuo.ily") }
      >>
    }
  }

  \bookpart {
    #(define prefix "07/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
        \new Staff \with \svn
        \new Voice = "SopranM"
        << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "SopranM.ily") >>
        \new Lyrics \lyricsto "SopranM" \include #(string-append prefix "SopranT.ily")

        \new StaffGroup <<
          \new Staff \with \vlIvn
          \new Voice = "Violine1"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine1.ily") >>

          \new Staff \with \vlIIvn
          \new Voice = "Violine2"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine2.ily") >>

          \new Staff \with \vlavn
          \new Voice = "Viola"
          << \clef "alto" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Viola.ily") >>
        >>

        \new PianoStaff <<
          \new Staff << \include #(string-append prefix "Global.ily") \include #(string-append prefix "RH.ily") >>
          \new Staff
          <<
            \clef "bass" \include #(string-append prefix "Global.ily")
            \new Voice { \include #(string-append prefix "Violoncello.ily") }
          >>
        >>
        \new FiguredBass { \include #(string-append prefix "Continuo.ily") }
      >>
    }
  }

  \bookpart {
    #(define prefix "08/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
        \new Staff \with \bvn
        \new Voice = "BassM"
        << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "BassM.ily") >>
        \new Lyrics \lyricsto "BassM" \include #(string-append prefix "BassT.ily")

        \new StaffGroup <<
          \new Staff \with \vlIvn
          \new Voice = "Violine1"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine1.ily") >>

          \new Staff \with \vlIIvn
          \new Voice = "Violine2"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine2.ily") >>

          \new Staff \with \vlavn
          \new Voice = "Viola"
          << \clef "alto" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Viola.ily") >>
        >>

        \new PianoStaff <<
          \new Staff << \include #(string-append prefix "Global.ily") \include #(string-append prefix "RH.ily") >>
          \new Staff
          <<
            \clef "bass" \include #(string-append prefix "Global.ily")
            \new Voice { \include #(string-append prefix "Violoncello.ily") }
          >>
        >>
        \new FiguredBass { \include #(string-append prefix "Continuo.ily") }
      >>
    }
  }

  \bookpart {
    #(define prefix "09/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
        \new Staff \with \avn
        \new Voice = "AltM"
        << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "AltM.ily") >>
        \new Lyrics \lyricsto "AltM" \include #(string-append prefix "AltT.ily")

        \new Staff \with \vlIvn
        \new Voice = "Violine1"
        << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine1.ily") >>

        \new PianoStaff <<
          \new Staff << \include #(string-append prefix "Global.ily") \include #(string-append prefix "RH.ily") >>
          \new Staff
          <<
            \clef "bass" \include #(string-append prefix "Global.ily")
            \new Voice { \include #(string-append prefix "Violoncello.ily") }
          >>
        >>
        \new FiguredBass { \include #(string-append prefix "Continuo.ily") }
      >>
    }
  }


  \bookpart {
    #(define prefix "10/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
        \new StaffGroup <<
          \new Staff \with \tbnIvn
          \new Voice = "TromboneI"
          << \clef "alto" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Trombone1.ily") >>

          \new Staff \with \tbnIIvn
          \new Voice = "TromboneII"
          << \clef "tenor" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Trombone2.ily") >>

          \new Staff \with \tbnIIIvn
          \new Voice = "TromboneIII"
          << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Trombone3.ily") >>
        >>

        \new ChoirStaff <<
          \new Staff \with \svn
          \new Voice = "SopranM"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "SopranM.ily") >>
          \new Lyrics \lyricsto "SopranM" \include #(string-append prefix "SopranT.ily")

          \new Staff \with \avn
          \new Voice = "AltM"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "AltM.ily") >>
          \new Lyrics \lyricsto "AltM" \include #(string-append prefix "AltT.ily")

          \new Staff \with \tvn
          \new Voice = "TenorM"
          << \clef "treble_8" \include #(string-append prefix "Global.ily") \include #(string-append prefix "TenorM.ily") >>
          \new Lyrics \lyricsto "TenorM" \include #(string-append prefix "TenorT.ily")

          \new Staff \with \bvn
          \new Voice = "BassM"
          << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "BassM.ily") >>
          \new Lyrics \lyricsto "BassM" \include #(string-append prefix "BassT.ily")
        >>

        \new StaffGroup <<
          \new Staff \with \vlIvn
          \new Voice = "Violine1"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine1.ily") >>

          \new Staff \with \vlIIvn
          \new Voice = "Violine2"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine2.ily") >>

          \new Staff \with \vlavn
          \new Voice = "Viola"
          << \clef "alto" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Viola.ily") >>
        >>

        \new PianoStaff <<
          \new Staff << \include #(string-append prefix "Global.ily") \include #(string-append prefix "RH.ily") >>
          \new Staff
          <<
            \clef "bass" \include #(string-append prefix "Global.ily")
            \new Voice { \include #(string-append prefix "Violoncello.ily") }
          >>
        >>
        \new FiguredBass { \include #(string-append prefix "Continuo.ily") }
      >>
    }
  }



  \bookpart {
    #(define prefix "11/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
        \new StaffGroup <<
          \new Staff \with \tbnIvn
          \new Voice = "TromboneI"
          << \clef "alto" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Trombone1.ily") >>

          \new Staff \with \tbnIIvn
          \new Voice = "TromboneII"
          << \clef "tenor" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Trombone2.ily") >>
        >>

        \new ChoirStaff <<
          \new Staff \with \svn
          \new Voice = "SopranM"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "SopranM.ily") >>
          \new Lyrics \lyricsto "SopranM" \include #(string-append prefix "SopranT.ily")

          \new Staff \with \avn
          \new Voice = "AltM"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "AltM.ily") >>
          \new Lyrics \lyricsto "AltM" \include #(string-append prefix "AltT.ily")

          \new Staff \with \tvn
          \new Voice = "TenorM"
          << \clef "treble_8" \include #(string-append prefix "Global.ily") \include #(string-append prefix "TenorM.ily") >>
          \new Lyrics \lyricsto "TenorM" \include #(string-append prefix "TenorT.ily")

          \new Staff \with \bvn
          \new Voice = "BassM"
          << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "BassM.ily") >>
          \new Lyrics \lyricsto "BassM" \include #(string-append prefix "BassT.ily")
        >>

        \new StaffGroup <<
          \new Staff \with \vlIvn
          \new Voice = "Violine1"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine1.ily") >>

          \new Staff \with \vlIIvn
          \new Voice = "Violine2"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine2.ily") >>
        >>

        \new PianoStaff <<
          \new Staff << \include #(string-append prefix "Global.ily") \include #(string-append prefix "RH.ily") >>
          \new Staff
          <<
            \clef "bass" \include #(string-append prefix "Global.ily")
            \new Voice { \include #(string-append prefix "Violoncello.ily") }
          >>
        >>
        \new FiguredBass { \include #(string-append prefix "Continuo.ily") }
      >>
    }
  }

  \bookpart {
    #(define prefix "12/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
        \new ChoirStaff <<
          \new Staff \with \svn
          \new Voice = "SopranM"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "SopranM.ily") >>
          \new Lyrics \lyricsto "SopranM" \include #(string-append prefix "SopranT.ily")

          \new Staff \with \avn
          \new Voice = "AltM"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "AltM.ily") >>
          \new Lyrics \lyricsto "AltM" \include #(string-append prefix "AltT.ily")

          \new Staff \with \bvn
          \new Voice = "BassM"
          << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "BassM.ily") >>
          \new Lyrics \lyricsto "BassM" \include #(string-append prefix "BassT.ily")
        >>

        \new PianoStaff <<
          \new Staff << \include #(string-append prefix "Global.ily") \include #(string-append prefix "RH.ily") >>
          \new Staff
          <<
            \clef "bass" \include #(string-append prefix "Global.ily")
            \new Voice { \include #(string-append prefix "Violoncello.ily") }
          >>
        >>
        \new FiguredBass { \include #(string-append prefix "Continuo.ily") }
      >>
    }
  }


  \bookpart {
    #(define prefix "13/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
        \new StaffGroup <<
          \new Staff \with \tbnIvn
          \new Voice = "TromboneI"
          << \clef "alto" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Trombone1.ily") >>

          \new Staff \with \tbnIIvn
          \new Voice = "TromboneII"
          << \clef "tenor" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Trombone2.ily") >>
        >>

        \new ChoirStaff <<
          \new Staff \with \svn
          \new Voice = "SopranM"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "SopranM.ily") >>
          \new Lyrics \lyricsto "SopranM" \include #(string-append prefix "SopranT.ily")

          \new Staff \with \avn
          \new Voice = "AltM"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "AltM.ily") >>
          \new Lyrics \lyricsto "AltM" \include #(string-append prefix "AltT.ily")

          \new Staff \with \tvn
          \new Voice = "TenorM"
          << \clef "treble_8" \include #(string-append prefix "Global.ily") \include #(string-append prefix "TenorM.ily") >>
          \new Lyrics \lyricsto "TenorM" \include #(string-append prefix "TenorT.ily")

          \new Staff \with \bvn
          \new Voice = "BassM"
          << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "BassM.ily") >>
          \new Lyrics \lyricsto "BassM" \include #(string-append prefix "BassT.ily")
        >>

        \new StaffGroup <<
          \new Staff \with \vlIvn
          \new Voice = "Violine1"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine1.ily") >>

          \new Staff \with \vlIIvn
          \new Voice = "Violine2"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine2.ily") >>
        >>

        \new PianoStaff <<
          \new Staff << \include #(string-append prefix "Global.ily") \include #(string-append prefix "RH.ily") >>
          \new Staff
          <<
            \clef "bass" \include #(string-append prefix "Global.ily")
            \new Voice { \include #(string-append prefix "Violoncello.ily") }
          >>
        >>
        \new FiguredBass { \include #(string-append prefix "Continuo.ily") }
      >>
    }
  }

  \bookpart {
    #(define prefix "13/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
        \new StaffGroup <<
          \new Staff \with \tbnIvn
          \new Voice = "TromboneI"
          << \clef "alto" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Trombone1.ily") >>

          \new Staff \with \tbnIIvn
          \new Voice = "TromboneII"
          << \clef "tenor" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Trombone2.ily") >>
        >>

        \new ChoirStaff <<
          \new Staff \with \svn
          \new Voice = "SopranM"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "SopranM.ily") >>
          \new Lyrics \lyricsto "SopranM" \include #(string-append prefix "SopranT.ily")

          \new Staff \with \avn
          \new Voice = "AltM"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "AltM.ily") >>
          \new Lyrics \lyricsto "AltM" \include #(string-append prefix "AltT.ily")

          \new Staff \with \tvn
          \new Voice = "TenorM"
          << \clef "treble_8" \include #(string-append prefix "Global.ily") \include #(string-append prefix "TenorM.ily") >>
          \new Lyrics \lyricsto "TenorM" \include #(string-append prefix "TenorT.ily")

          \new Staff \with \bvn
          \new Voice = "BassM"
          << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "BassM.ily") >>
          \new Lyrics \lyricsto "BassM" \include #(string-append prefix "BassT.ily")
        >>

        \new StaffGroup <<
          \new Staff \with \vlIvn
          \new Voice = "Violine1"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine1.ily") >>

          \new Staff \with \vlIIvn
          \new Voice = "Violine2"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine2.ily") >>
        >>

        \new PianoStaff <<
          \new Staff << \include #(string-append prefix "Global.ily") \include #(string-append prefix "RH.ily") >>
          \new Staff
          <<
            \clef "bass" \include #(string-append prefix "Global.ily")
            \new Voice { \include #(string-append prefix "Violoncello.ily") }
          >>
        >>
        \new FiguredBass { \include #(string-append prefix "Continuo.ily") }
      >>
    }
  }



  \bookpart {
    #(define prefix "15/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
        \new Staff \with \bvn
        \new Voice = "BassM"
        << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "BassM.ily") >>
        \new Lyrics \lyricsto "BassM" \include #(string-append prefix "BassT.ily")

        \new StaffGroup <<
          \new Staff \with \vlIvn
          \new Voice = "Violine1"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine1.ily") >>

          \new Staff \with \vlIIvn
          \new Voice = "Violine2"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine2.ily") >>
        >>

        \new PianoStaff <<
          \new Staff << \include #(string-append prefix "Global.ily") \include #(string-append prefix "RH.ily") >>
          \new Staff
          <<
            \clef "bass" \include #(string-append prefix "Global.ily")
            \new Voice { \include #(string-append prefix "Violoncello.ily") }
          >>
        >>
        \new FiguredBass { \include #(string-append prefix "Continuo.ily") }
      >>
    }
  }


  \bookpart {
    #(define prefix "16/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
        \new StaffGroup <<
          \new Staff \with \tbnIvn
          \new Voice = "TromboneI"
          << \clef "alto" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Trombone1.ily") >>

          \new Staff \with \tbnIIvn
          \new Voice = "TromboneII"
          << \clef "tenor" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Trombone2.ily") >>
        >>

        \new ChoirStaff <<
          \new Staff \with \svn
          \new Voice = "SopranM"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "SopranM.ily") >>
          \new Lyrics \lyricsto "SopranM" \include #(string-append prefix "SopranT.ily")

          \new Staff \with \avn
          \new Voice = "AltM"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "AltM.ily") >>
          \new Lyrics \lyricsto "AltM" \include #(string-append prefix "AltT.ily")

          \new Staff \with \tvn
          \new Voice = "TenorM"
          << \clef "treble_8" \include #(string-append prefix "Global.ily") \include #(string-append prefix "TenorM.ily") >>
          \new Lyrics \lyricsto "TenorM" \include #(string-append prefix "TenorT.ily")

          \new Staff \with \bvn
          \new Voice = "BassM"
          << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "BassM.ily") >>
          \new Lyrics \lyricsto "BassM" \include #(string-append prefix "BassT.ily")
        >>

        \new StaffGroup <<
          \new Staff \with \vlIvn
          \new Voice = "Violine1"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine1.ily") >>

          \new Staff \with \vlIIvn
          \new Voice = "Violine2"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine2.ily") >>
        >>

        \new PianoStaff <<
          \new Staff << \include #(string-append prefix "Global.ily") \include #(string-append prefix "RH.ily") >>
          \new Staff
          <<
            \clef "bass" \include #(string-append prefix "Global.ily")
            \new Voice { \include #(string-append prefix "Violoncello.ily") }
          >>
        >>
        \new FiguredBass { \include #(string-append prefix "Continuo.ily") }
      >>
    }
  }
} % end book



%{
 \bookpart {
    #(define prefix "01/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
        \new StaffGroup <<
          \new Staff \with \tbnIvn
          \new Voice = "TromboneI"
          << \clef "alto" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Trombone1.ily") >>

          \new Staff \with \tbnIIvn
          \new Voice = "TromboneII"
          << \clef "tenor" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Trombone2.ily") >>

          \new Staff \with \tbnIIIvn
          \new Voice = "TromboneIII"
          << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Trombone3.ily") >>
        >>

        \new StaffGroup <<
          \new Staff \with \obIvn
          \new Voice = "Oboe1"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Oboe1.ily") >>

          \new Staff \with \obIIvn
          \new Voice = "Oboe2"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Oboe2.ily") >>
        >>

        \new ChoirStaff <<
          \new Staff \with \svn
          \new Voice = "SopranM"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "SopranM.ily") >>
          \new Lyrics \lyricsto "SopranM" \include #(string-append prefix "SopranT.ily")

          \new Staff \with \avn
          \new Voice = "AltM"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "AltM.ily") >>
          \new Lyrics \lyricsto "AltM" \include #(string-append prefix "AltT.ily")

          \new Staff \with \tvn
          \new Voice = "TenorM"
          << \clef "treble_8" \include #(string-append prefix "Global.ily") \include #(string-append prefix "TenorM.ily") >>
          \new Lyrics \lyricsto "TenorM" \include #(string-append prefix "TenorT.ily")

          \new Staff \with \bvn
          \new Voice = "BassM"
          << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "BassM.ily") >>
          \new Lyrics \lyricsto "BassM" \include #(string-append prefix "BassT.ily")
        >>

 \new StaffGroup <<
          \new Staff \with \vlIvn
          \new Voice = "Violine1"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine1.ily") >>

          \new Staff \with \vlIIvn
          \new Voice = "Violine2"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine2.ily") >>

          \new Staff \with \vlavn
          \new Voice = "Viola"
          << \clef "alto" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Viola.ily") >>
        >>

        \new PianoStaff <<
          \new Staff << \include #(string-append prefix "Global.ily") \include #(string-append prefix "RH.ily") >>
          \new Staff
          <<
            \clef "bass" \include #(string-append prefix "Global.ily")
            \new Voice { \include #(string-append prefix "Violoncello.ily") }
          >>
        >>
        \new FiguredBass { \include #(string-append prefix "Continuo.ily") }
      >>
      \layout {
        \context {
          \Score
          \RemoveEmptyStaves
        }
      }
    }
  }
%}