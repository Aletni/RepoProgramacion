%potencia%
exp(N,0,s(0)):-nat(N).
exp(N,s(0),N):-nat(N).
exp(N,s(M),R):-exp(N,M,P),mult(P,N,R).

par(0).
par(s(s(N))):-par(N).

impar(s(0)).
impar(s(s(N))):-impar(N).


d(X,X,1).
d(C,X,=):-atomic(C),C\=[],C\=X,C\=e.
d(-A,X,-DA):-d(A,X,DA).
d(A+B,X,DA+DB):-d(A,X,DA),d(B,X,DB).
d(A-B,X,DA-DB):-d(A,X,DA),d(B,X,DB).
d(C*A,X,C*DA):-atomic(C),C\=[],C\=X,C\=e,d(A,X,DA).
d(A*B,X,DA*B+A*DB):-d(A,X,DA),d(B,X,DB).

d(A^B,X,B*DA*A^(B-1)):-A\=e,atomic(B),B\=X,B\=e.
		       B\=[].d(A,X,DA).	
d(A^B,X,A*(DB*ln(A)+B*DA/A)):-d(A,X,DA),d(B,X,DB).


d(ln(A),X,DA/A):-d(A,X,DA).
d(e^A,X,DA*e^A):-d(A,X,DA).

d(sen(A),X,DA*cos(A)):--d(A,X,DA).
d(cos(A),X,-DA*sen(A)):-d(A,X,DA).

s(0*A,0).
s(A*0,0).
s(A*1,A).
s(1*A,A).

derivar(A,X,DAS):-d(A,X,DA),s(DA,DAS).
