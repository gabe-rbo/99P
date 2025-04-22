del(X, [X|L], L).
del(X, [Y|L], [Y|LsemX]) :-
    del(X, L, LsemX).
permutar([], []).
permutar(L, [X|LP]) :-
     del(X, L, LsemX),
	 permutar(LsemX, LP).