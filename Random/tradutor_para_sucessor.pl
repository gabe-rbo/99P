sucessor(0, s(0)).
sucessor(A, s(X)) :- 
	A > 0,
	A1 is A - 1,
	sucessor(A1, X).