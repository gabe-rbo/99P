concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :-
    concatenar(L1, L2, L3).

lista([]).
lista([_|_]).
% definimos o que é uma  lista para sermos capazes de identificá-la.


planificar([Cabeca|Cauda], ListaPlanificada) :-
	(lista(Cabeca) -> planificar(Cabeca, CabecaPlanificada); =(CabecaPlanificada, [Cabeca])),
	planificar(Cauda, CaudaPlanificada),
	concatenar(CabecaPlanificada, CaudaPlanificada, ListaPlanificada).

planificar([], []).

%planificar([Cabeca|Cauda], ListaPlanificada) :-
%	planificar(Cabeca, CabecaPlanificada),
%	planificar(Cauda, CaudaPlanificada),
%	concatenar(CabecaPlanificada, CaudaPlanificada, ListaPlanificada).
%	
%planificar([], []).
%planificar(X, [X]).