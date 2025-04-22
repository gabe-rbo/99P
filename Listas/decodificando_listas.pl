decodificar([_, _], 0, []).
decodificar([N, Letra], N,[Letra|Corpo]) :-
    N1 is N-1,
    decodificar([N1, Letra], N1, Corpo).

decodificar([], []).
decodificar([[N, Letra]|Corpo], [CabecaDecodificada|CorpoDecodificado]) :-
    decodificar([N, Letra], N, CabecaDecodificada),
    decodificar(Corpo, CorpoDecodificado).


