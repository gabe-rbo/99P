concatenar([], [A], [A]).
concatenar([Cabeca|Corpo], L, [Cabeca|CorpoConcatenado]) :-
	concatenar(Corpo, L, CorpoConcatenado).

inverter([], []).
inverter([Cabeca|Corpo], ListaInvertida) :-
	inverter(Corpo, CorpoInvertido),
	concatenar(CorpoInvertido, [Cabeca], ListaInvertida).
	
palindromo(L) :-
	inverter(L, LInvertido),
	=(L, LInvertido).