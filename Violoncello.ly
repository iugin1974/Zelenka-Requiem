\version "2.24.1"
\language "deutsch"
\include "Cover.ily"
\include "Commons.ily"
#(set-global-staff-size 18)
\pointAndClickOff

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
  \bookOutputName "Requiem - Violoncello, Violone"

  \bookpart {
    \header {
      title = \markup { \fromproperty #'header:myTitle }
      instrument = "Violoncello - Violone"
    }
    \markup \null
  } %ends titling

  \bookpart {
    #(define prefix "01/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
          \new Staff
          \new Voice = "Violoncello"
          << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violoncello.ily") >>
      >>
    }

    #(define prefix "02/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
          \new Staff
          \new Voice = "Violoncello"
          << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violoncello.ily") >>
      >>
    }

    #(define prefix "03/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
          \new Staff
          \new Voice = "Violoncello"
          << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violoncello.ily") >>
      >>
    }
  }

  \bookpart {
    #(define prefix "04/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
          \new Staff
          \new Voice = "Violoncello"
          << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violoncello.ily") >>
      >>
    }

    #(define prefix "05/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
          \new Staff
          \new Voice = "Violoncello"
          << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violoncello.ily") >>
      >>
    }
  }

  \bookpart {
    #(define prefix "06/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
          \new Staff
          \new Voice = "Violoncello"
          << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violoncello.ily") >>
      >>
    }

    #(define prefix "07/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
          \new Staff
          \new Voice = "Violoncello"
          << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violoncello.ily") >>
      >>
    }
}

  \bookpart {
    #(define prefix "08/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
          \new Staff
          \new Voice = "Violoncello"
          << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violoncello.ily") >>
      >>
    }

    #(define prefix "09/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
          \new Staff
          \new Voice = "Violoncello"
          << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violoncello.ily") >>
      >>
    }
  }

  \bookpart {
    #(define prefix "10/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
          \new Staff
          \new Voice = "Violoncello"
          << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violoncello.ily")
           >>
      >>
    }
  }

  \bookpart {
    #(define prefix "11/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
          \new Staff
          \new Voice = "Violoncello"
          << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violoncello.ily") >>
      >>
    }

 #(define prefix "12/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
          \new Staff
          \new Voice = "Violoncello"
          << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violoncello.ily") >>
      >>
    }
  }

  \bookpart {
    #(define prefix "13/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
          \new Staff
          \new Voice = "Violoncello"
          << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violoncello.ily") >>
      >>
    }

    #(define prefix "14/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
          \new Staff
          \new Voice = "Violoncello"
          << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violoncello.ily") >>
      >>
    }
  }

  \bookpart {
    #(define prefix "15/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
          \new Staff
          \new Voice = "Violoncello"
          << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violoncello.ily") >>
      >>
    }

    #(define prefix "16/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
          \new Staff
          \new Voice = "Violoncello"
          << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violoncello.ily") >>
      >>
    }
  }
}
