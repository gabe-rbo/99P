% Queremos contar o n�mero de n�dulos internos de uma �rvore bin�ria.
% Sabemos que um n�dulo � interno se ele n�o for uma folha.

leaf(t(_, nil, nil)).


internals2(nil, Acu, Acu).
internals2(Node, Acu, Internos) :-
    =(Node, t(X, E, D)),
    (not(leaf(Node)) -> =(NAcu,[X|Acu])
    ;   =(NAcu, Acu)),
    internals2(E, NAcu, InternosE),
    internals2(D, InternosE, Internos).


internals(t(_, E, D), Internos) :- internals2(E, [], InternosE), internals2(D, InternosE, Internos).



















%internals(nil, []).
%internals(t(X, L, R), [X|S]) :-
%    internals(L, SL), internals(R, SR), append(SL, SR, S).


