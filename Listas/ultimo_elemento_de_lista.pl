ultimo_elemento([X|[]], X).
ultimo_elemento([_|Y], X) :-
	ultimo_elemento(Y, X).