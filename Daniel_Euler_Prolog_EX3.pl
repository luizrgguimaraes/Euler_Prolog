fatores_primos(N,L) :- N > 0,  fatores_primos(N,L,2).
fatores_primos(1,[],_) :- !.
fatores_primos(N,[F|L],F) :- R is N // F, N =:= R * F, !, fatores_primos(R,L,F).
fatores_primos(N,L,F) :- prox_fator(N,F,NF), fatores_primos(N,L,NF).       

prox_fator(_,2,3) :- !.
prox_fator(N,F,NF) :- F * F < N, !, NF is F + 2.
prox_fator(N,_,N).
                             