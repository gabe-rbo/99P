% queremos dividir uma lista em duas, usando de que o tamanho da
% primeira lista j� foi dado.

%split(L, 0, [], L).
%split([Cabeca|Corpo], 1, [Cabeca], Corpo).
%split(Lista, N, L1, L2) :- split(Lista, N, L1, L2, []).

%split([Cabeca|Corpo], 0, [Cabeca|Acu], Corpo, Acu).
%split([Cabeca|Corpo], N, L1, L2, Acu) :-
%    N1 is N-1,
%    split(Corpo, N1, L1, L2, [Cabeca|Acu]).

split(L, 0, [], L).
%split([Cabeca|Corpo], 1, [Cabeca], Corpo).
split([CabL|CorpoL], N, [CabL|C], L2) :-
    N1 is N-1,
    split(CorpoL, N1, C, L2), !.

% Isso d� [... b|c], pois, como vamos construindo L1 de frente para
% tr�s, a �ltima calda que deveria ser uma lista � uma constante, neste
% caso c.
% Como arrumar??
