%concatenar([], [A], [A]).
%concatenar([Cabeca|Corpo], L, [Cabeca|CorpoConcatenado]) :-
%	concatenar(Corpo, L, CorpoConcatenado).

%inverter([], []).
%inverter([Cabeca|Corpo], ListaInvertida) :-
%	inverter(Corpo, CorpoInvertido),
%	concatenar(CorpoInvertido, [Cabeca], ListaInvertida).

inverter([], []).
inverter(Lista, ListaInvertida) :- inverter(Lista, [], ListaInvertida).

inverter([], Acu, Acu).
inverter([Cabeca|Corpo], Acu, ListaInvertida) :-
	inverter(Corpo, [Cabeca|Acu], ListaInvertida).

	