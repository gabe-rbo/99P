ultimo_termo([X], X) :- !.
ultimo_termo([X|L], Y) :-
    ultimo_termo(L, Y).

% agora usando concatenação.

concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :-
    concatenar(L1, L2, L3).

ultimo_termo_por_conc([X], X).
%:- concatenar([], [X], [X]).
ultimo_termo_por_conc([X|L], Y) :-
    concatenar(L1, [Y], L). % queremos que L1 seja a lista sem o último elemento.
    