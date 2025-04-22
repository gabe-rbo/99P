element_at(X, [X|_], 1).
element_at(X, [_|L1], N) :-
	N1 is N - 1,
	element_at(X, L1, N1).