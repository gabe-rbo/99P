max(X, Y, Max) :-
	( X > Y ->
	  =(Max, X)
	; =(Max, Y)
	).
	
maxlist([X], X) :- !.
maxlist([X|Cauda], Max) :-
	maxlist(Cauda, MaxCauda),
	max(X, MaxCauda, Max).