subconjunto([], []).
subconjunto([Cabeca|Cauda], [Cabeca|Subconjunto]) :- % Mantém o primeiro elemento
	subconjunto(Cauda, Subconjunto).
subconjunto([Cabeca|Cauda], Subconjunto) :-  % Esquece o primeiro elemento.
	subconjunto(Cauda, Subconjunto).	