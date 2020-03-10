%LISTAS



lista([]). %Definimos la lista vacia,es decir la lista vacia es una lista.
lista([Car|_]):-lista(Car).%definimos la cabeza o car de una lista
lista([_|Cdr]):-lista(Cdr).%definimos la cola o cdr de una lista

/*Obtener el Car de una lista ( el car es el primer elemento)*/
car([Car|_],Car).
/*Obtener el Cdr de una lista ( el cdr es la cola de elementos)*/
cdr([_|Cdr],Cdr).

%Saber si un elemento es miembro de una lista.

/*
El elemento puede estar en la primera posicion o el elemento puede estar en cualquier posicion sin ser la primera.
*/

miembro(Elemento,[Elemento|_]).
miembro(Elemento,[_|Cdr]):-miembro(Elemento,Cdr).






