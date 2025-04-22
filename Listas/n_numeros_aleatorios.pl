range(X, X, [X]) :- !.
range(A, B, [Cabeca|Corpo]) :-
	=(Cabeca, A),
	A1 is A+1,
	A1 =< B,
	range(A1, B, Corpo).

escolhe(0, _, []).
escolhe(1, [X|_], X).
escolhe(1, [_|L], Y) :-
	escolhe(1, L, Y).
	
escolhe(N, [X|L], [X|Restante]) :-
	N1 is N-1,
	escolhe(N1, L, Restante).
	
escolhe(N, [_|L], Escolhidos) :-
	escolhe(N, L, Escolhidos).
	
sorteio(N, Max, Sorteados) :-
	range(1, Max, Numeros),
	escolhe(N, Numeros, Sorteados).