% Esse problema � um pouco mais complexo porque requer "adicionar"
% elementos em �rvores.

add(X, nil, t(X, nil, nil)).
add(X, t(Root, L, R), t(Root, L1, R)) :-  % Se for menor que o n�dulo principal, colocamos � esquerda.
    X @< Root,
    add(X, L, L1).
add(X, t(Root, L, R), t(Root, L, R1)) :- % Se for maior colocamos � direita.
    X @> Root,
    add(X, R, R1).


construct(L, T) :- construct(L, T, nil).

construct([], T, T).  % Nos devolve a �rvore que j� t�nhamos.
construct([N|Ns], T, T0) :- !, add(N, T0, T1), construct(Ns, T, T1).

