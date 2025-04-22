% Queremos verificar se um termo representa uma �rvore bin�ria ou n�o.
% Para isso precisamos, primeiro, definir o que � uma �rvore t.

istree(nil). % A �rvore vazia � uma �rvore.

% Para verificarmos se o termo � uma �rvore, precisamos agora verificar
% se suas sub-�rvores tamb�m s�o.

istree(t(X, L, R)) :- istree(L), istree(R), not(istree(X)).

