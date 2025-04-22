numerico(0, 0).
numerico(s(X), Y) :-
%	(var(X), var(Y) -> false
%	; true),
	numerico(X, Z),
	Y is Z+1.
	
% esse programa nos dá tanto a escrita da forma de Peano quanto a escrita indoarábica.