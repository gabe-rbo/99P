concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :-
    concatenar(L1, L2, L3).
	
% concatenar(L1, [X, Y, Z], L).
% Isso nos dá uma lista L1 sem os últimos 3 elementos. Ou seja, apaga os 3 últimos
% elementos de L, nos dando L1.

% concatenar([A, B, C|L2], [X, Y, Z], L).
% Isso apaga os 3 primeiros e os 3 últimos elementos de L, nos dando uma nova lista 
% L2.