penultimo_elemento([Y, _ | []], Y).
penultimo_elemento([_ , A | L], Y) :-
	penultimo_elemento([A|L], Y).