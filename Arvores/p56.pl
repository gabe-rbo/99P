% Queremos verificar se �rvores s�o sim�tricas, n�o em conte�do, mas em
% forma.

symmetric(nil) :- !.
symmetric(t(_, L, R)) :- mirror(L, R).

mirror(nil, nil).
mirror(t(_, nil, nil), t(_, nil, nil)) :- !.
mirror(t(_, L1, R1), t(_, L2, R2)) :-
    mirror(L1, R2), mirror(R1,L2).
