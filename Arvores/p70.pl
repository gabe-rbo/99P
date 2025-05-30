% Queremos construir uma �rvore multidirecional com base numa string
% onde ^ representa voltar ao n�vel anterior.
% O predicado tamb�m deve funcionar em abos os sentidos.

tree(String, T) :- atom(String), atom_chars(String, CharsS), gera_arvore(CharsS-[], T), !.
tree(String, T) :- nonvar(T), gera_arvore(StringChars-[], T), atom_chars(String, StringChars).

% Como reconhecer o caracter ^ recursivamente?

gera_arvore([Char1|Chars] - L, t(Char1, Floresta)) :- gera_floresta(Chars-['^'|L], Floresta).

% Podemos subtrair as listas. A floresta respectiva vai ser gerada at� o
% primeiro ^. Ent�o podemos usar da unifica��o para encontr�-lo.

gera_floresta(F - F, []) :- !.
gera_floresta(F1 - F3, [Arvore|Floresta]) :- gera_arvore(F1 - F2, Arvore), gera_floresta(F2 - F3,
                                                                                          Floresta).
% Precisamos de F2 aqui pois ele "procura" os ^.
% F1 � a lista de caracteres com o primeiro ^,
% F3 � o restante de F1.
% F2 � a parte de F3 at� o primeiro ^ em F3.

% Para fazermos isso funcionar dos dois lados, temos que inverter a
% ordem de condi��es de tree (�rvore neste caso n�o pode ser uma
% vari�vel)

% tree(String, T) :- nonvar(T), gera_arvores(StringChars, T),
% atom_chars(String, StringChars).



