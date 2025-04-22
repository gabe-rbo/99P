% Queremos exibir uma árvore binária de forma que os nódulos vizinhos
% tenham mesma distância horizontal entre si. Ou seja, se B e C são
% subárvores de A, d_h(A, raiz(B)) = d_h(A, raiz(C))7

layout_binary_tree(T, LT) :- lbth(T, LT, 0, Y).

% Casos base do lado esquerdo e direito.
lbth_L(nil, nil, _, _).
lbth_L(t(W, nil, nil), t(W, X, 0, nil, nil), XPassado, 1):- !,
    X is XPassado - 1.
lbth_R(t(W, nil, nil), t(W, X, 0, nil, nil), XPassado, 1):- !,
    X is XPassado + 1.
lbth_R(nil, nil, _, _).

% Recursão do Lado Esquerdo e Direito.
lbth_L(t(W, L, R), t(W, X, Y, LayoutL, LayoutR), XPassado, YPassado) :-
    lbth_L(L, LayoutL, X, Y),
    lbth_R(R, LayoutR, X, Y),
    Y is YPassado - 1,
    X is XPassado - 2 ** YPassado.

lbth_R(t(W, L, R), t(W, X, Y, LayoutL, LayoutR), XPassado, YPassado) :-
    lbth_L(L, LayoutL, X, Y),
    lbth_R(R, LayoutR, X, Y),
    Y is YPassado - 1,
    X is XPassado + 2 ** YPassado.

lbth(t(W, L, R), t(W, 0, Y, LayoutL, LayoutR), 0, Y) :-
    lbth_L(L, LayoutL, 0, Y),
    lbth_R(R, LayoutR, 0, Y).


