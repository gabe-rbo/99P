% Queremos gerar uma árvore binária com N nódulos.

complete_binary_tree(N, T) :- complete_binary_tree(N, 1, T).

complete_binary_tree(N, Lvl, nil) :- Lvl > N, !.
complete_binary_tree(N, Lvl, t(x, L, R)) :- Lvl =< N,
    AL is 2 * Lvl,
    AR = AL + 1,
    complete_binary_tree(N, AL, L),
    complete_binary_tree(N, AR, R).

