% Queremos gerar listas simétricas por meio do paradigma de geração e
% teste. Para isso, vamos usar o P55 e P56.

:- ensure_loaded(p55).
:- ensure_loaded(p56).

sym_cbal_trees(N, Ts) :-
    cbal_tree(N, T),
    (symmetric(T) -> =(T, Ts)
    ;    fail).
