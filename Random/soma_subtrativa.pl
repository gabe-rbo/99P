% soma(A, 0, A). essa cláusula é redundante, retirá-la permite encontrar outras respostas sem repeti-las.
soma(0, B, B).
soma(s(A), B, s(C)) :- soma(A, B, C).

% gerar um "tradutor" de s(X) para caracteres numéricos