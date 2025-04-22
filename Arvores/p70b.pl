% Queremos contar se um termo representa uma �rvore multidirecional
% Uma �rvore multidirecional � composta pelo n�dulo raiz e uma floresta
% de sucessores.

istree(t(_, F)) :- isflorest(F).

isflorest([]).
isflorest([X|Xs]) :- istree(X), isflorest(Xs).
