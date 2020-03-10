numero_natural(0).
numero_natural(sig(Numero)):-numero_natural(Numero).

par(0).
par(siguiente(siguiente(Numero))):-par(Numero).

suma(Numero,0,Numero):-numero_natural(Numero).
suma(sig(Sumando1), Sumando2, sig(Resultado)) :- suma(Sumando1, Sumando2, Resultado). 
producto(0,N,0):-numero_natural(N). 
producto(N,s(M),R):-producto(N,M,Q), suma(Q,N,R).