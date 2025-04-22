% Queremos contar o número de nódulos de uma árvore multidirecional.

nnodes(t(_, []), 1) :- !.
nnodes(t(_, [X|Xs]), N) :-
    nnodes(X, N0),
    nnodes_l(Xs, N1),
    N is N0 + N1 + 1. % + 1 Pois temos que considerar o primeiro nódulo.

nnodes_l([], 0) :- !.
nnodes_l([X|Xs], N) :-
    nnodes(X, N0),
    nnodes_l(Xs, N1),
    N is N0 + N1.


