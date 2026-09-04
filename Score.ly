\version "2.24.1"
\language "deutsch"
\include "Cover.ily"
\include "Commons.ily"
#(set-global-staff-size 15)
\pointAndClickOff

\paper {
  tocItemMarkup = \tocItemWithDotsMarkup
  system-separator-markup = \slashSeparator
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
  \bookOutputName "Requiem - Partitur"

  \bookpart {
    \header {
      title = \markup { \fromproperty #'header:myTitle }
      instrument = "Partitur"
    }
    \markup \null
  } %ends titling


\bookpart {
\markuplist \table-of-contents
}

  \bookpart {
    #(define prefix "01/")
    \tocItem \markup "Requiem (Chor)"
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

          \new Staff
          <<
            \clef "bass" \include #(string-append prefix "Global.ily")
            \new Voice { \include #(string-append prefix "Violoncello.ily") }
          >>
          \new FiguredBass { 
            \override BassFigure.font-size = #1
            \include #(string-append prefix "Continuo.ily") }
      >>
    }
  }


  \bookpart {
    #(define prefix "02/")
    \tocItem \markup "Te decet hymnus (Soli SATB)"
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

          \new Staff
          <<
            \clef "bass" \include #(string-append prefix "Global.ily")
            \new Voice { \include #(string-append prefix "Violoncello.ily") }
          >>
          \new FiguredBass { 
            \override BassFigure.font-size = #1
            \include #(string-append prefix "Continuo.ily") }
      >>
    }
  }


  \bookpart {
    #(define prefix "03/")
    \tocItem \markup "Kyrie (Chor)"
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

          \new Staff
          <<
            \clef "bass" \include #(string-append prefix "Global.ily")
            \new Voice { \include #(string-append prefix "Violoncello.ily") }
          >>
          \new FiguredBass { 
            \override BassFigure.font-size = #1
            \include #(string-append prefix "Continuo.ily") }
      >>
    }
  }



  \bookpart {
    #(define prefix "04/")
    \tocItem \markup "Christe (Soli SA)"
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

         \new Staff
          <<
            \clef "bass" \include #(string-append prefix "Global.ily")
            \new Voice { \include #(string-append prefix "Violoncello.ily") }
          >>
          \new FiguredBass { 
            \override BassFigure.font-size = #1
            \include #(string-append prefix "Continuo.ily") }
      >>
    }
    \markup{\huge{Kyrie da capo}}
  }


  \bookpart {
    #(define prefix "05/")
    \tocItem \markup "Dies irae (Chor)"
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

         \new Staff
          <<
            \clef "bass" \include #(string-append prefix "Global.ily")
            \new Voice { \include #(string-append prefix "Violoncello.ily") }
          >>
          \new FiguredBass { 
            \override BassFigure.font-size = #1
            \include #(string-append prefix "Continuo.ily") }
      >>
    }
  }


  \bookpart {
    #(define prefix "06/")
    \tocItem \markup "Quantus tremor (Duett ST)"
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

         \new Staff
          <<
            \clef "bass" \include #(string-append prefix "Global.ily")
            \new Voice { \include #(string-append prefix "Violoncello.ily") }
          >>
          \new FiguredBass { 
            \override BassFigure.font-size = #1
            \include #(string-append prefix "Continuo.ily") }
      >>
    }
  }

  \bookpart {
    #(define prefix "07/")
    \tocItem \markup "Tuba mirum (Solo S)"
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

         \new Staff
          <<
            \clef "bass" \include #(string-append prefix "Global.ily")
            \new Voice { \include #(string-append prefix "Violoncello.ily") }
          >>
          \new FiguredBass { 
            \override BassFigure.font-size = #1
            \include #(string-append prefix "Continuo.ily") }
      >>
    }
  }

  \bookpart {
    #(define prefix "08/")
    \tocItem \markup "Mors stupebit (Solo B)"
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

         \new Staff
          <<
            \clef "bass" \include #(string-append prefix "Global.ily")
            \new Voice { \include #(string-append prefix "Violoncello.ily") }
          >>
          \new FiguredBass { 
            \override BassFigure.font-size = #1
            \include #(string-append prefix "Continuo.ily") }
      >>
    }
  }

  \bookpart {
    #(define prefix "09/")
    \tocItem \markup "Liber scriptus (Solo A)"
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

         \new Staff
          <<
            \clef "bass" \include #(string-append prefix "Global.ily")
            \new Voice { \include #(string-append prefix "Violoncello.ily") }
          >>
          \new FiguredBass { 
            \override BassFigure.font-size = #1
            \include #(string-append prefix "Continuo.ily") }
      >>
    }
  }


  \bookpart {
    #(define prefix "10/")
    \tocItem \markup "Lacrymosa (Chor)"
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

         \new Staff
          <<
            \clef "bass" \include #(string-append prefix "Global.ily")
            \new Voice { \include #(string-append prefix "Violoncello.ily") }
          >>
          \new FiguredBass { 
            \override BassFigure.font-size = #1
            \include #(string-append prefix "Continuo.ily") }
      >>
    }
  }



  \bookpart {
    #(define prefix "11/")
    \tocItem \markup "Sanctus (Chor und Soli ST)"
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

         \new Staff
          <<
            \clef "bass" \include #(string-append prefix "Global.ily")
            \new Voice { \include #(string-append prefix "Violoncello.ily") }
          >>
          \new FiguredBass { 
            \override BassFigure.font-size = #1
            \include #(string-append prefix "Continuo.ily") }
      >>
    }
  }

  \bookpart {
    #(define prefix "12/")
    \tocItem \markup "Benedictus (Terzett SAB)"
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

         \new Staff
          <<
            \clef "bass" \include #(string-append prefix "Global.ily")
            \new Voice { \include #(string-append prefix "Violoncello.ily") }
          >>
          \new FiguredBass { 
            \override BassFigure.font-size = #1
            \include #(string-append prefix "Continuo.ily") }
      >>
    }
  }


  \bookpart {
    #(define prefix "13/")
    \tocItem \markup "Osanna (Chor)"
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

         \new Staff
          <<
            \clef "bass" \include #(string-append prefix "Global.ily")
            \new Voice { \include #(string-append prefix "Violoncello.ily") }
          >>
          \new FiguredBass { 
            \override BassFigure.font-size = #1
            \include #(string-append prefix "Continuo.ily") }
      >>
    }
  }

  \bookpart {
    #(define prefix "14/")
    \tocItem \markup "Agnus Dei (Chor und Soli SAT)"
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

         \new Staff
          <<
            \clef "bass" \include #(string-append prefix "Global.ily")
            \new Voice { \include #(string-append prefix "Violoncello.ily") }
          >>
          \new FiguredBass { 
            \override BassFigure.font-size = #1
            \include #(string-append prefix "Continuo.ily") }
      >>
    }
  }



  \bookpart {
    #(define prefix "15/")
    \tocItem \markup "Lux eterna (Solo B)"
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

         \new Staff
          <<
            \clef "bass" \include #(string-append prefix "Global.ily")
            \new Voice { \include #(string-append prefix "Violoncello.ily") }
          >>
          \new FiguredBass { 
            \override BassFigure.font-size = #1
            \include #(string-append prefix "Continuo.ily") }
      >>
    }
  }


  \bookpart {
    #(define prefix "16/")
    \tocItem \markup "Cum Sanctis (Chor)"
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

         \new Staff
          <<
            \clef "bass" \include #(string-append prefix "Global.ily")
            \new Voice { \include #(string-append prefix "Violoncello.ily") }
          >>
          \new FiguredBass { 
            \override BassFigure.font-size = #1
            \include #(string-append prefix "Continuo.ily") }
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

         \new Staff
          <<
            \clef "bass" \include #(string-append prefix "Global.ily")
            \new Voice { \include #(string-append prefix "Violoncello.ily") }
          >>
          \new FiguredBass { 
            \override BassFigure.font-size = #1
            \include #(string-append prefix "Continuo.ily") }
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