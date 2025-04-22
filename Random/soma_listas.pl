soma([], 0).
soma([X|Cauda], Soma) :-
	soma(Cauda, SomaCauda),
	Soma is SomaCauda + X.