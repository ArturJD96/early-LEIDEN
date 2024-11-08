\version "2.24.3"

\new PetrucciStaff \relative {

	% Kyrie from a mass of "Cypriot Manuscript"

	\override Score.SpacingSpanner.packed-spacing = ##t
	\override PetrucciStaff.TimeSignature.style = #'mensural
	\override NoteHead.style = #'blackpetrucci

	\clef "blackmensural-c1"
	\time 6/2
	\once \hide PetrucciStaff.TimeSignature

	g'2 a b a b g
	\once \override PetrucciStaff.TimeSignature.style = #'single-digit
	\time 3/2
	\scaleDurations 1/3 {
		a1 b2
		c1 b4 a
		g1 f4 g
	}
	\time 3/2
	e1
}