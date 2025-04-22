% Queremos constuir uma árvore balanceada pela sua altura. Isto é, a
% a altura de sua sub-árvore esquerda não pode diferir da altura da
% sub-árvore direita em mais de 1 unidade.
% Se queremos gerar uma árvore de altura N, precisamos gerar suas
% sub-árvores com altura N-1.

hbal_tree(0, nil).
hbal_tree(N, t(x, L, R)) :- N > 0,
    N0 is N - 1,
    permuta_alturas(N0, N1, N2),
    hbal_tree(N1, L),
    hbal_tree(N2, R).

permuta_alturas(H, H, H).
permuta_alturas(H, H1, H) :-
    H > 0,
    H1 is H - 1.
permuta_alturas(H, H, H2) :-
    H > 0,
    H2 is H - 1.
