concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :-
    concatenar(L1, L2, L3).

e(0, zero).
e(1, um).
e(2, dois).
e(3, tres).
e(4, quatro).
e(5, cinco).
e(6, seis).
e(7, sete).
e(8, oito).
e(9, nove).

traduz([], []).
traduz([Cabeca|Cauda], [SigX|TraducaoCauda]) :-
	e(Cabeca, SigX),
	traduz(Cauda, TraducaoCauda).
	