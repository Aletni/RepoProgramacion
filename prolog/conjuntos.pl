conjunto([]). %Conjunto vacio
conjunto([Car|Cdr]) :- miembro(Car,Cdr),!,fail.
conjunto([_|Cdr]) :- conjunto(Cdr).


inclusion([],_).
inclusion([Car|Cdr],C):- miembro(Car ,C),inclusion(Cdr,C).

union([],C,C).

union([Car|Cdr],C,U):-miembro(Car,C),!,union(Cdr,C,U).
union([Car|Cdr],C,[Car|U]):- union(Cdr,C,U).

interseccion([],_,[]).
interseccion([Car|Cdr],C,[Car|I]):- miembro(Car,C),!,
                            interseccion(Cdr,C,I).
interseccion([_|Cdr],C,I):- interseccion(Cdr,C,I).


diferencia([],_,[]).
diferencia([Car|Cdr],C,D) :- miembro(Car,C),!,
                            diferencia(Cdr,C,D).
diferencia([Car|Cdr],C,[Car|D]) :- diferencia(Cdr,C,D).





%borra( X, [ X | Xs ], Zs ) :- borra( X, Xs, Zs ) .
%borra( X, [ Y | Xs ], [ Y | Zs ] ) :- X \== Y, borra( X, Xs, Zs ) .  
%borra( X, [], [] ) .


%/*----------------------------------------------------------------------*/

borrar-ant(X,[],[]).%Caso base,si la lista esta vacia el resultado seria la misma lista

borrar-ant(X,[_,X|Cdr],[X|R]):- !, borrar-ant(X,Cdr, R). 
borrar-ant(X,[Car|Cdr],[Car|R]):-borrar-ant(X,Cdr,R). %Para un solo elemento o si el elemento esta en la cabeza, el resultado es la misma lista.
%borrar-ant(X,[Z,Y,X|Cdr],[Z,X|Cdr]):-borrar-ant(X,Lista,Lista).







