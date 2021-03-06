\version "2.14.2"
\include "deutsch.ly"

#(set-global-staff-size 16.4)

\header {
  title = "\"Wachet auf, ruft uns die Stimme\""
  subtitle = "(Choral aus der Kantate BWV 140)"
  composer = "Johann Sebastian Bach (1685-1750)"
  arranger = "arr.: John Harvey"
  enteredby = "cellist (2013-04-14)"
}

voiceconsts = {
  \key es \major
  \time 4/4
  \tempo "Lento " 4=60
  %\numericTimeSignature
  \compressFullBarRests
}

%minstr = "harpsichord"
mihi = "clarinet"
%minstr = "accordion"
milo = "bassoon"

dimi = \markup \italic "dim."
dolc = \markup \italic "dolce"

\include "v1.ily"
\include "v2.ily"
\include "v3.ily"
\include "v4.ily"

music = \new StaffGroup <<
      \new Staff {
	\set Staff.midiInstrument = \mihi
	\set Staff.instrumentName = #"Cello I"
	\transpose es es { \va }
      }

      \new Staff {
	\set Staff.midiInstrument = \mihi
	\set Staff.instrumentName = #"Cello II"
	\transpose es es { \vb }
      }

      \new Staff {
	\set Staff.midiInstrument = \milo
	\set Staff.instrumentName = #"Cello III"
	\transpose es es { \vc }
      }

      \new Staff {
	\set Staff.midiInstrument = \milo
	\set Staff.instrumentName = #"Cello IV"
	\transpose es es { \vd }
      }
>>

\book {
  \score {
    \music
    \layout {}
  }

  \score {
    \unfoldRepeats \music

    \midi {
      \context {
        \Score
      }
    }
  }
}
