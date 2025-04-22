min(X, Y, Min) :-
	(X > Y -> =(Min, Y); =(Min, X)).
	
minlist([], 0).
minlist([X|[]], X) :- !.
minlist([X|Cauda], Min) :-
	minlist(Cauda, MinCauda),
	max(X, MinCauda, Min).
	
del(X, [X|L], L).
del(X, [Y|L], [Y|LsemX]) :-
    del(X, L, LsemX).
	
ordena([], []).
ordena(Lista, ListaOrdenada) :-
	minlist(Lista, Min),
	del(Min, Lista, ListaSemMinimo),
	ordena(ListaSemMinimo, CaudaOrdenada),
	=(ListaOrdenada, [Min|CaudaOrdenada]).
	
ordenada([_]).
ordenada([X, Y|Cauda]) :-
	X =< Y,
	ordenada(Y|Cauda).