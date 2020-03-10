lista([]).
lista([_|Cdr]):-lista(Cdr).

%tenemos un predicado con dos elementos

car([Car|_],Car).%Nos sirve para obtener el Car o primer elementos

cdr([_|Cdr],Cdr).
%obtener el segundo elemento de la lista
segundo([_,Y|_],Y).

%obtener ultimo elemento de la lista

ultimo([Car],Car).
ultimo([_|Cdr],R):-ultimo(Cdr,R).

penultimo([X,_],X).
penultimo([_|Cdr],R):-penultimo(Cdr,R).

%Va a ser cierto cuando el miembro sea un elemento de la lista
miembro(Car,[Car|_]).%Caso base cuabdo encontramos el elemento
miembro(X,[_|Cdr]):-miembro(X,Cdr).

longitud([],0).
longitud([Car|Cdr],s(L)):-longitud(Cdr,L).

longitud2([],0).
longitud2([_|Cdr],R):-longitud2(Cdr,L),R is L+1.

concatenar([],L,L).
concatenar([Car|Cdr],L,[Car|C]):-concatenar(Cdr,L,C).


invertir([],[]).
invertir([Car|Cdr],R):-invertir(Cdr,T),concatenar(T,[Car],R).

%Cuando tenemos posibles anidamientos,queremos obtener una lista con los elementos formados por la lista original [1,[2,3],[],4]=[1,2,3,4]

aplanar([],[]).
aplanar(Atomo,[Atomo]):-atomic(Atomo),Atomo\==[].
aplanar([Car|Cdr],R):-aplanar(Car,CarA),aplanar(Cdr,CdrA),concatenar(CarA,CdrA,R).


%QUICKSORT

quicksort([],[]).
quicksort([Car|Cdr],R):-partir(Car,Izq,Der),
                        quicksort(Izq,IzqOrdenada),
                        quicksort(Der,DerOrdenada),
                        concatenar(IzqOrdenada,[Car|DerOrdenada],R).


partir(_,[],[],[]). %La _ corresponde al pivote
partir(Pivote,[Car|Cdr],[Car|Izq],Der):- Car =< Pivote,
                                  partir(Pivote,Cdr,Izq,Der).
partir(Pivote,[Car|Cdr],Izq,[Car|Der]):- Car > Pivote,
                                  partir(Pivote,Cdr,Izq,Der).






















