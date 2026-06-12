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
  \bookOutputName "Requiem - Trombone Bass"

  \bookpart {
    \header {
      title = \markup { \fromproperty #'header:myTitle }
      instrument = "Trombone Bass"
    }
    \markup \null
  } %ends titling

  \bookpart {
    \markup\tacet{"01. Requiem"}
    \markup\tacet{"02. Te decet hymnus"}
    \markup\tacet{"03. Kyrie"}
    \markup\tacet{"04. Christe"}
    \markup\tacet{"03. Kyrie - da Capo"}
    \markup\tacet{"04. Christe"}

    #(define prefix "05/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
        \new Staff
        \new Voice = "Trombone3"
        << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Trombone3.ily") >>
      >>
    }
    \markup\tacet{"06. Quantus tremor"}
    \markup\tacet{"07. Tuba mirum"}
    \markup\tacet{"08. Mors stupebit"}
    \markup\tacet{"09. Liber scriptus"}

    #(define prefix "10/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
        \new Staff
        \new Voice = "Trombone3"
        <<
          \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Trombone3.ily")
        >>
      >>
    }

    \markup\tacet{"11. Sanctus"}
    \markup\tacet{"12. Benedictus"}
    \markup\tacet{"13. Osanna"}
    \markup\tacet{"14. Agnus Dei"}
    \markup\tacet{"15. Lux eterna"}
    \markup\tacet{"16. Cum Sanctis"}
  }
}
