% Queremos resolver o problema das N rainhas.
% N�o ser� resolvido pelo algoritmo de gera��o e teste.
% Nenhuma rainha pode estar na mesma linha (ou seja, ter a mesma
% posicao). A diferenca entre as coordenadas nao pode ser igual (nao
% estao na mesma diagonal).

nqueens(Queens, Solution) :-
    length(Queens, Dim),
    solver(Queens, [],  Solution, Dim).

solver([], Solved, Solved, _).
solver([Q|OtherQueens], Solved, Solution, Dim) :-
    noattack([Q|Solved], Solved2, Dim),
    solver(OtherQueens, Solved2, Solution, Dim).


noattack([], [], _).
noattack([Q], [Q], _).
% noattack � um predicado que define a �ltima rainha colocada (a da
% cabe�a), se ela atacar algu�m, ent�o trocamos ela de posi��o. (Sabemos
% que as outras j� n�o se atacam).
noattack([Q|Others], Solved, Dim) :-
    length([Q|Others], Coluna),
    posicoes_proibidas(Others, PontosProibidosCP, Dim, 1, Coluna),
    sort(PontosProibidosCP, PontosProibidos), % Elimina Duplicados
   (delete(PontosProibidos, Q, _) -> posicoes(Dim, TodasPosicoes),
                                       subtract(TodasPosicoes, PontosProibidos, PosicoesPossiveis), !,
                                       select(QN, PosicoesPossiveis, _),
                                       %noattack([QN|Others], Solved, Dim)
                                       =(Solved, [QN|Others])
    ; =(Solved, [Q|Others])).

% Gera os pontos proibidos da pr�xima coluna.
posicoes_proibidas([], [], _, Coluna, Coluna).
posicoes_proibidas([Q1|QOthers], PontosProibidos, Dim, Cont, Coluna) :-
    PP1A is Q1 + Cont, PP1B is Q1 - Cont,  % Essas condicionais geram as diagonais
    (PP1A =< Dim, PP1A > 0 -> =(LPPA, [PP1A])
    ;   =(LPPA, [])),
    (PP1B =< Dim, PP1B > 0 -> =(LPPB, [PP1B])
    ;   =(LPPB, [])),
    Cont2 is Cont + 1,
    posicoes_proibidas(QOthers, PPs, Dim, Cont2, Coluna),
    append([Q1|LPPA], LPPB, PP1s),
    append(PP1s, PPs, PontosProibidos).

posicoes(0, []).
posicoes(N, [N|Resto]) :-
    N1 is N-1,
    posicoes(N1, Resto).

% O motivo disso gerar solu��es repetidas � justamente o select/3
% juntamente ao posicoes_proibidas/5. Porque, para cada escolha, gera-se
% posi��es proibidas, as quais podem se repetir, ocorrendo uma repeti��o
% das escolhas.
%
% Mesmo que esse algoritmo seja mais "complicado"/feio, ele tem ordem de
% complexidade menor.
