% Queremos selecionar, de maneira aleatória, N elementos de uma lista
% pré-determinada. Tentarei simular o não-determinismo pelo delete.

del([X|L], X, L).
del([Y|L], X,[Y|LsemX]) :-
    del(L, X, LsemX).

%rnd_select(_, 0, []).
%rnd_select(L, N, [X|Corpo]) :-
%    N1 is N - 1,
%    del(L, X, LsemX),
%    rnd_select(LsemX, N1, Corpo).

% Isso ainda fica determinístico pois estamos percorrendo a árvore de
% possibilidades de maneira sistemática. Vamos tentar usar rnd().

posicao([X|_], 1, X).
posicao([_|L], N, X) :-
    N1 is N - 1,
    posicao(L, N1, X).

rnd_select(_, 0, []).
rnd_select(L, N, [X|Corpo]) :-
    length(L, TamanhoL),
    random_between(1, TamanhoL, R),
    posicao(L, R, X),
    del(L, X, LsemX),
    N1 is N - 1,
    rnd_select(LsemX, N1, Corpo).
