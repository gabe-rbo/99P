% Queremos contar se um termo representa uma árvore multidirecional
% Uma árvore multidirecional é composta pelo nódulo raiz e uma floresta
% de sucessores.

istree(t(_, F)) :- isflorest(F).

isflorest([]).
isflorest([X|Xs]) :- istree(X), isflorest(Xs).
