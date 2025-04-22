concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :-
    concatenar(L1, L2, L3).

inverso([], []).
%inverso([X], [X]). Cláusula Redundante.
inverso([X|Cauda], ListaInvertida) :-
    inverso(Cauda, CaudaInvertida),
	concatenar(CaudaInvertida, [X], ListaInvertida).
	