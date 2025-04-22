agrupar(Lista, ListaAgrupada) :-
    agrupar(Lista, [], [], ListaAgrupada).

agrupar([X|[]], Acumulador1 , Acumulador2, [[X|Acumulador1]|Acumulador2]).
agrupar([X, Y|Xs], Acumulador1, Acumulador2, ListaAgrupada) :-
    X = Y,
    agrupar([X|Xs], [X|Acumulador1], Acumulador2, ListaAgrupada).
agrupar([X, Y|Ys], Acumulador1, Acumulador2, ListaAgrupada) :-
    X \= Y,
    agrupar([Y|Ys], [], [[X|Acumulador1]|Acumulador2], ListaAgrupada).


codificar(Lista, ListaCodificada) :-
	agrupar(Lista, [], [], ListaEmpacotada),
	transformar(ListaEmpacotada, ListaCodificada).

transformar([], []).
transformar([[X|Xs]|Ys], [[N, X]|Zs]) :-
	length([X|Xs], N),
	transformar(Ys, Zs).
