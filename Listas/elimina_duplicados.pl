comprimir([], []).
comprimir([X], [X]).
comprimir([X, X|Xs], Zs) :-
	comprimir([X|Xs], Zs).
comprimir([X, Y|Ys], [X|Zs]) :-
	X \= Y,
	comprimir([Y|Ys], Zs).