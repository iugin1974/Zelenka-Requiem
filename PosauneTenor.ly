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
  \bookOutputName "Requiem - Trombone Tenor"

  \bookpart {
    \header {
      title = \markup { \fromproperty #'header:myTitle }
      instrument = "Trombone Tenor"
    }
    \markup \null
  } %ends titling

  \bookpart {
    #(define prefix "01/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
        \new Staff
        \new Voice = "Trombone2"
        << \clef "tenor" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Trombone2.ily") >>
      >>
    }

    \markup\tacet{"02. Te decet hymnus"}

    #(define prefix "03/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
        \new Staff
        \new Voice = "Trombone2"
        << \clef "tenor" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Trombone2.ily") >>
      >>
    }

    \markup\tacet{"04. Christe"}

    #(define prefix "05/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
        \new Staff
        \new Voice = "Trombone2"
        << \clef "tenor" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Trombone2.ily") >>
      >>
    }
    \markup\tacet{"06. Quantus tremor"}
    \markup\tacet{"07. Tuba mirum"}
    \markup\tacet{"08. Mors stupebit"}
    \markup\tacet{"09. Liber scriptus"}
  }

  \bookpart {
    #(define prefix "10/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
        \new Staff
        \new Voice = "Trombone2"
        <<
          \clef "tenor" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Trombone2.ily")
        >>
      >>
    }

    #(define prefix "11/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
        \new Staff
        \new Voice = "Trombone2"
        << \clef "tenor" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Trombone2.ily") >>
      >>
    }

    \markup\tacet{"12. Benedictus"}

    #(define prefix "13/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
        \new Staff
        \new Voice = "Trombone2"
        << \clef "tenor" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Trombone2.ily") >>
      >>
    }

    #(define prefix "14/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
        \new Staff
        \new Voice = "Trombone2"
        << \clef "tenor" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Trombone2.ily") >>
      >>
    }
    \markup\tacet{"15. Lux eterna"}
  }

  \bookpart {
    #(define prefix "16/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
        \new Staff
        \new Voice = "Trombone2"
        << \clef "tenor" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Trombone2.ily") >>
      >>
    }
  }
}
