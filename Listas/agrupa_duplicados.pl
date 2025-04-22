agrupar(Lista, ListaAgrupada) :-
    agrupar(Lista, [], [], ListaAgrupada).


% tive que definir o caso de parada como a lista de apenas um elemento
% pois era aqui que o programa gerava erro.
% =============================================================================
% agrupar([X|[]], Acumulador1 , Acumulador2,
% [[X|Acumulador1]|Acumulador2]).
% agrupar([X, Y|Xs], Acumulador1, Acumulador2, ListaAgrupada) :-
%     X = Y, agrupar([X|Xs], [X|Acumulador1], Acumulador2,
% ListaAgrupada).
% agrupar([X, Y|Ys], Acumulador1, Acumulador2, ListaAgrupada) :-
%     X \= Y, agrupar([Y|Ys], [], [[X|Acumulador1]|Acumulador2],
% ListaAgrupada).
% ===============================================================================
% Esse método nos dá a lista original agrupada de trás para frente, pois
% fazemos a recursão pela cabeça, então acabamos invertendo a ordem. A
% recursão deve sempre gerar o corpo e não a cabeça caso queremos que
% fique na orgem original.


%agrupar([], [], [], []).
%agrupar([], Acu1, Acu2, [Acu2|Acu1]).
%agrupar([X, Y|Xs], Acu1, Acu2, ListaAgrupada) :-
%    X = Y,
%    agrupar([Y|Xs], [X|Acu1], Acu2, ListaAgrupada).
%agrupar([X, Y|Ys], Acu1, Acu2, ListaAgrupada) :-
%    X \= Y,
%    =(Acu1Linha, [X|Acu1]),
%    agrupar([Y|Ys], [], [Acu2|Acu1Linha], ListaAgrupada).
%

pack([],[]).
pack([X|Xs],[Z|Zs]) :- transfer(X,Xs,Ys,Z), pack(Ys,Zs).

% transfer(X,Xs,Ys,Z) Ys is the list that remains from the list Xs
%    when all leading copies of X are removed and transfered to Z

transfer(X,[],[],[X]).
transfer(X,[Y|Ys],[Y|Ys],[X]) :- X \= Y.
transfer(X,[X|Xs],Ys,[X|Zs]) :- transfer(X,Xs,Ys,Zs).
