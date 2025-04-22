divide_listas([], [], []).
divide_listas([X], [X], []).
divide_listas([X, Y|Cauda], [X|A], [Y|B]) :-
	divide_listas(Cauda, A, B).