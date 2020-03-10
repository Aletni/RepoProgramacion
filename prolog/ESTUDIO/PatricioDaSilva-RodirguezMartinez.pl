

borrar-ant(X,[],[]).%Caso base,si la lista esta vacia el resultado seria la misma lista
borrar-ant(X,[X|Cdr],[X|Cdr]):-borrar-ant(X,Lista,R). %Para un solo elemento o si el elemento esta en la cabeza, el resultado es la misma lista.
borrar-ant(X,[_,X|Cdr],[X|Cdr]):- borrar-ant(X,Lista, R). 
