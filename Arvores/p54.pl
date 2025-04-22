% Queremos verificar se um termo representa uma árvore binária ou não.
% Para isso precisamos, primeiro, definir o que é uma árvore t.

istree(nil). % A árvore vazia é uma árvore.

% Para verificarmos se o termo é uma árvore, precisamos agora verificar
% se suas sub-árvores também são.

istree(t(X, L, R)) :- istree(L), istree(R), not(istree(X)).

