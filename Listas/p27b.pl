% del(-X, +L, -L)
del(X, [X|L], L).
del(X, [_|L], LsemX) :- del(X, L, LsemX). % N�o colocar _ na cabea�a de LsemX que permite que n�o hajam repeti��es das permuta��es. L n�o possui elementos repetidos, por isso funciona apenas para uma solu��o. Quando colocamos X na cabe�a em [X|L] faz com queconsigamos apenas uma solu��o.

select(0, _, []).
select(N, L, [E|Es]) :-
    del(E, L, LsemE),
    N1 is N - 1,
    select(N1, LsemE, Es).


group(_, [], []).
group(L, [N|Ns], [G|Gs]) :-
   select(N, L, G),
   subtract(L, G, LsemG),
   group(LsemG, Ns, Gs).
