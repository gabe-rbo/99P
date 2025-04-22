% Von Koch's conjecture
% Queremos enumerar os nodos de um grafo de 1 a N e suas arestas de 1 a
% N - 1 de forma que a aresta K seja t.q K é igual a diferença de seus
% nodos.
% Estamos que as árvores aqui são multidirecionais

vonkoch([], []).
vonkoch(t(_, [X|Xs]), t(NA1, NAresta, [NX|NXs])) :-
    nnodes(t(_, [X|Xs]), Length),
    ns(Length, Numeros, 1),
    pega_maiores(Numeros, 1, [NA1|_]),
    append(NPossiveis, [NA1|[]], Numeros),
    vonkoch_menores([X|Xs], NPossiveis, [NX|NXs]),
    NAresta is NA1 - NX.

vonkoch_menores([], _, []).
vonkoch_menores([t(A1, Ys)|Xs], NPossiveis, [t(NA1, NYs)|NXs]) :-
    length([t(A1, Ys)|Xs], TamanhoL),
    pega_menores(NPossiveis, TamanhoL, Menores),
    select(NA1, Menores, Menores1),
    append(Menores, NPossiveis1, NPossiveis),
    vonkoch_maiores(Ys, NPossiveis1, NYs),
    vonkoch_menores(Xs, Menores1, NXs).

vonkoch_maiores([], _, []).
vonkoch_maiores([t(A1, Ys)|Xs], NPossiveis, [t(NA1, NYs)|NXs]) :-
    length([t(A1, Ys)|Xs], TamanhoL),
    pega_maiores(NPossiveis, TamanhoL, Maiores),
    select(NA1, Maiores, Maiores1),
    append(NPossiveis1, Maiores, NPossiveis),
    vonkoch_menores(Ys, NPossiveis1, NYs),
    vonkoch_maiores(Xs, Maiores1, NXs).


ns(N, [N], N).
ns(N, [Acu|Ns], Acu) :-
    Acu1 is Acu + 1,
    ns(N, Ns, Acu1).

pega_menores(_, 0, []).
pega_menores([N1|Ns], N, [N1|LMs]) :-
    M is N-1,
    pega_menores(Ns, M, LMs).

pega_maiores(L, N, Maiores) :-
    length(L, Length),
    M is Length - N,
    pega_menores(L, M, Menores),
    append(Menores, Maiores, L).

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
