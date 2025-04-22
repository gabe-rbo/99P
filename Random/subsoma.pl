subsoma([], 0, []).
subsoma([Cabeca|Cauda], N, [Cabeca|Subconjunto]) :- % Cabeca está no subconjunto
	N1 is N - Cabeca,
	subsoma(Cauda, N1, Subconjunto).
subsoma([_|Cauda], N, Subconjunto) :-  % Cabeca não está no subconjunto
	subsoma(Cauda, N, Subconjunto).