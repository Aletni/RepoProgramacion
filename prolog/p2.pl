%posorden(Arbol,Posorden) :- posorden_dl(Arbol, Posorden-[]).
%posorden_dl(arbol(A,[],[]),[A|X]-X) :-!.
%posorden_dl(arbol(A,I,[]),C-X) :- posorden_dl(I,C-[A|X]).
%posorden_dl(arbol(A,[],D),C-X) :- posorden_dl(D,C-[A|X]).
%posorden_dl(arbol(A,I,D),C-F) :- posorden_dl(I,C-X),posorden_dl(D,X-[A|F]).




%posorder(arbol(X,F),Seq):-posorder_hijos(F,SeqF),
%                          append(SeqF,[X],Seq).
%posorder_hijos([],[]).
%posorder_hijos([T|Ts],Seq):-posorder(T,SeqT),
%                           posorder_hijos(Ts,SeqTs),
%                          append(SeqT,SeqTs,Seq).



posorden(Arbol,Posorden) :- posorden_dl(Arbol, Posorden-[]).
posorden_dl(arbol(A,[],[]),[A|X]-X) :-!.
posorden_dl(arbol(A,I,[]),C-X) :- posorden_dl(I,C-[A|X]).
posorden_dl(arbol(A,[],D),C-X) :- posorden_dl(D,C-[A|X]).
posorden_dl(arbol(A,I,D),C-F) :- posorden_dl(I,C-X),posorden_dl(D,X-[A|F]).







