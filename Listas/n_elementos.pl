n_elementos([], 0).
n_elementos([_|L], N) :-
	n_elementos(L, N1),
	N is N1 + 1.