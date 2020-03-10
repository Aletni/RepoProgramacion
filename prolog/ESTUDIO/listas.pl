:- op(600, xfy, [\]).

%Obtner la Cabeza de una lista,Donde la variable Cab unifica con [Cab|_] y asi obtenemos el primer elemento

cabeza(Cab,[Cab|_]). 
%Obtner la Cola de una lista,Donde la variable Col unifica con [_|Col] y asi obtenemos el resto de elementos

cola(Col,[_|Col]).

%Concatenar concatenar(Lista 1 ,Lista 2 ,Resultado) describiendo la concatenación de listas Lista 1 y Lista 2 para obtener la nueva lista resultado. La idea no es otra 
%que la de recorrer la primera lista hasta el final, paraluego concatenarle los elementos de la segunda.

concatenar([],L,L).
concatenar([Cab|Col],Lista2,[Cab|R]):-concatenar(Col,Lista2,R).

%Miembro,devuelve true si el elemento pertenece a la lista.

miembro(Elem,[Cab|_]):-Elem is Cab,!.
miembro(Elem,[_|Col]):-miembro(Elem,Col).


%El predicado será notado invertir(Lista,Inversa) que consideraremos se verificará si Inversa es la lista inversa al primer nivel de profundidad de Lista.

invertir([],[]).
invertir([Cab|Col],T):-invertir(Col,R),concatenar(Cab,R,T).



%Ejemplo 10.2.5 Proponemos implementar el aplanamiento de una lista mediante el predicado aplanar(Lista,Resultado) que supondremos cierto cuando Resultado sea 
%el resultado de aplanar la lista Lista. 

aplanar([],[]).
aplanar( Atomo, [Atomo]) :- atomic(Atomo), Atomo \==[].
aplanar([Car|Cdr], R) :- aplanar( Car, CarA), aplanar(Cdr,CdrA), concatenar(CarA,CdrA, R).

%Obtener el segundo elemento de una lista

segundo(Ele,[_,Ele|_]).


%Obtener el ultimo elemento de una lista

ultimo([Cab],Cab).
ultimo([_|Col],Ele):-ultimo(Col,Ele).

%Penultimo(L,E) es cierto si E es el penultimo elemento de la lista L.
penultimo([Cab,_],Cab):-!.
penultimo([_|Col],Ele):-penultimo(Col,Ele).

%Antepenultimpo elemento de una lista
antepenultimo([Cab,_,_],Cab):-!.
antepenultimo([_|Col],Ele):-antepenultimo(Col,Ele).

% Implementar el predicado partir,partir(Lista,Elemento,Subc1,Subc2) donde el Subc1 esta formado por los elementos hasta donde 
% esta Elemento este tb se incluye, y sub2 por el resto

partir([Elem|Cdr],Elem,[Elem],Cdr):-!.
partir([Car|Cdr],Elem,[Car|P1],P2):-partir(Cdr,Elem,P1,P2).


intercalar([Car1],[Car2|Cdr],[Car1,Car2|Cdr]) :- !. %Concatenas el primer elemento de la lista con otro elemento de otra lista,u otros
intercalar([Car1|Cdr],[Car2],[Car1,Car2|Cdr]) :- !.
intercalar([Car1|Cdr1],[Car2|Cdr2],[Car1,Car2|Cdr]) :- intercalar(Cdr1,Cdr2,Cdr).

