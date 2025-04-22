inserir(X, L, [X|L]).
inserir(X, [Y|L], [Y|LcomX]) :-
    inserir(X, L, LcomX).
	
permutar([], []).
permutar([X|L], LP) :-
	permutar(L, LPsemX),  % Aqui está a recursão, como ela não está no final, não pode ser otimimizada por meio de TailRecursionOptimization.
	inserir(X, LPsemX, LP).