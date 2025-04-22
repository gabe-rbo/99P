empacotar([], [[]]).
empacotar([X], [[X]]).
empacotar([X, X|Corpo], ListaEmpacotada) :-
	empacotar([X|Corpo], [X|ListaEmpacotada]).