soma(A, 0, A).
soma(0, B, B).
soma(A, B, C) :-
	A1 is A-1,
	B1 is B+1,
	soma(A1, B1, C).