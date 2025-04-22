entre(A, B, A) :-
	A =< B.
entre(A, B, X) :-
	A1 is A + 1,
	A1 =< B,
	entre(A1, B, X).