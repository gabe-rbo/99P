% del(-X, +L, -L)
del(X, [X|L], L).
del(X, [_|L], LsemX) :- del(X, L, LsemX). % Não colocar _ na cabeaça de LsemX que permite que não hajam repetições das permutações. L não possui elementos repetidos, por isso funciona apenas para uma solução. Quando colocamos X na cabeça em [X|L] faz com queconsigamos apenas uma solução.

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
