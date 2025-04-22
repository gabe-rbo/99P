concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :-
    concatenar(L1, L2, L3).

%roda([], []). % roda a lista para a esquerda.
roda([Cabeca|Cauda], ListaRodada) :-  % basta pegar a cauda e concatenar com a cabeça
	concatenar(Cauda, [Cabeca], ListaRodada).
    