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

#(define quoteName "violoncello")

\book {
  \bookOutputName "Requiem - Violine2"

  \bookpart {
    \header {
      title = \markup { \fromproperty #'header:myTitle }
      instrument = "Violine II"
    }
    \markup \null
  } %ends titling

  \bookpart {
    #(define prefix "01/")
    \addQuote #quoteName {
      \removeWithTag #'upper {
        \include #(string-append prefix "Violoncello.ily")
      }
    }
    \score {
      \include #(string-append prefix "Header.ily")
      <<
          \new Staff
          \new Voice = "Violine2"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine2.ily") >>
      >>
    }

    #(define prefix "02/")
    \addQuote #quoteName {
      \removeWithTag #'upper {
        \include #(string-append prefix "Violoncello.ily")
      }
    }
    \score {
      \include #(string-append prefix "Header.ily")
      <<
          \new Staff
          \new Voice = "Violine2"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine2.ily") >>
      >>
    }
  }

  \bookpart {
    #(define prefix "03/")
    \addQuote #quoteName {
      \removeWithTag #'upper {
        \include #(string-append prefix "Violoncello.ily")
      }
    }
    \score {
      \include #(string-append prefix "Header.ily")
      <<
          \new Staff
          \new Voice = "Violine2"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine2.ily") >>
      >>
    }

    #(define prefix "04/")
    \addQuote #quoteName {
      \removeWithTag #'upper {
        \include #(string-append prefix "Violoncello.ily")
      }
    }
    \score {
      \include #(string-append prefix "Header.ily")
      <<
          \new Staff
          \new Voice = "Violine2"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine2.ily") >>
      >>
    }

    #(define prefix "05/")
    \addQuote #quoteName {
      \removeWithTag #'upper {
        \include #(string-append prefix "Violoncello.ily")
      }
    }
    \score {
      \include #(string-append prefix "Header.ily")
      <<
          \new Staff
          \new Voice = "Violine2"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine2.ily") >>
      >>
    }

    #(define prefix "06/")
    \addQuote #quoteName {
      \removeWithTag #'upper {
        \include #(string-append prefix "Violoncello.ily")
      }
    }
    \score {
      \include #(string-append prefix "Header.ily")
      <<
          \new Staff
          \new Voice = "Violine2"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine2.ily") >>
      >>
    }

    #(define prefix "07/")
    \addQuote #quoteName {
      \removeWithTag #'upper {
        \include #(string-append prefix "Violoncello.ily")
      }
    }
    \score {
      \include #(string-append prefix "Header.ily")
      <<
          \new Staff
          \new Voice = "Violine2"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine2.ily") >>
      >>
    }
}

  \bookpart {
    #(define prefix "08/")
    \addQuote #quoteName {
      \removeWithTag #'upper {
        \include #(string-append prefix "Violoncello.ily")
      }
    }
    \score {
      \include #(string-append prefix "Header.ily")
      <<
          \new Staff
          \new Voice = "Violine2"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine2.ily") >>
      >>
    }

 \markup\tacet{"09. Liber scriptus"}

    #(define prefix "10/")
    \addQuote #quoteName {
      \removeWithTag #'upper {
        \include #(string-append prefix "Violoncello.ily")
      }
    }
    \score {
      \include #(string-append prefix "Header.ily")
      <<
          \new Staff
          \new Voice = "Violine2"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine2.ily")
             { s1.*21 s1*19 \pageBreak }>>
      >>
    }

    #(define prefix "11/")
    \addQuote #quoteName {
      \removeWithTag #'upper {
        \include #(string-append prefix "Violoncello.ily")
      }
    }
    \score {
      \include #(string-append prefix "Header.ily")
      <<
          \new Staff
          \new Voice = "Violine2"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine2.ily") >>
      >>
    }

\markup\tacet{"12. Benedictus"}
  }

  \bookpart {
    #(define prefix "13/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
          \new Staff
          \new Voice = "Violine2"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine2.ily") >>
      >>
    }

    #(define prefix "14/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
          \new Staff
          \new Voice = "Violine2"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine2.ily") >>
      >>
    }
  }

  \bookpart {
    #(define prefix "15/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
          \new Staff
          \new Voice = "Violine2"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine2.ily") >>
      >>
    }

    #(define prefix "16/")
    \addQuote #quoteName {
      \removeWithTag #'upper {
        \include #(string-append prefix "Violoncello.ily")
      }
    }
    \score {
      \include #(string-append prefix "Header.ily")
      <<
          \new Staff
          \new Voice = "Violine2"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine2.ily") >>
      >>
    }
  }
}
