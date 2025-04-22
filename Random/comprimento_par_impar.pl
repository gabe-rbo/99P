% Sabemos que uma lista tem comprimento par se conseguimos dividi-la em duas listas 
% de mesmo tamanho, ou ambas sendo de comprimento par.
comprimento_par([]).% 0 é par.
%comprimento_impar([X]). % 1 é par. Essa cláusula é redundante.

comprimento_par([X|L1]) :-
    comprimento_impar(L1).
	
comprimento_impar([Y|L2]) :-
    comprimento_par(L2).
