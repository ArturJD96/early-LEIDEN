\version "2.24.3"

<<
\new PetrucciStaff \new PetrucciVoice = "Tenor" \relative {

	% Beginning of Tenor from
	% Ockeghem's Missa Mi-Mi (Sanctus)

	\override Score.SpacingSpanner.packed-spacing = ##t
	\override PetrucciStaff.TimeSignature.style = #'mensural
	\override Lyrics.LyricText.X-extent = #'(0 . 0)
	\stemUp

	\clef "petrucci-c4"
	\time 3/2

	\[ e1\melisma
	   \once \override NoteHead.style = #'blackpetrucci
	   g1*3/4 \]
	f4
	a1
	\[ g1
		\once \override NoteHead.ligature-flexa = ##t
	   d1*2
	   b'\breve \] c1
	b1 a2 c1 b4 a\melismaEnd
	
	g1\melisma a2 b
	c2 a g1 e2 f2.
	 g4 f1\melismaEnd d2\melisma
	a'1\melismaEnd
	s4

}
\new Lyrics \lyricsto "Tenor" { Sanctus sanc tus }
>>