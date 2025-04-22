% Queremos apagar o n-ésimo elemento de uma lista.
% Vamos fazer isso usando um contador.

concatenar([], L, L).
concatenar([CabL|CorpoL], L2, L) :-
    concatenar(CorpoL, [CabL|L2], L).

drop([], _, []).
drop([_|Corpo], 1, Corpo).
drop([X|Corpo], N, L) :- drop([X|Corpo], N, [], L).

drop([_|Corpo], 1, Acu, L) :-
    concatenar(Acu, Corpo, L).

drop([X|Corpo], N, Acu, L) :-
    N1 is N-1,
    drop(Corpo, N1, [X|Acu], L).
