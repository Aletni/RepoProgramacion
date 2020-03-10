:- op(100,yfx,[y]).
:- op(200,fx,[respuesta]).
:- op(300,fx,[como]).
:- op(400,xfx,[tenemos]).
:- op(700,fx,[interseco]).
:- op(800,fx,[si]).



si interseco Conj_1 y Conj_2 y Conj_3 tenemos como respuesta Respuesta :- 
interseccion(Conj_1, Conj_2, I),
interseccion(I, Conj_3, Respuesta).


interseccion([],_,[]).
interseccion([Car|Cdr],Conjunto,[Car|Respuesta]):- 
      miembro(Car,Conjunto),!,
      interseccion(Cdr, Conjunto, Respuesta).

interseccion([_|Cdr], Conjunto, Respuesta) :- 
      interseccion(Cdr, Conjunto, Respuesta).

miembro(Elemento,[Elemento|_]):-!.
miembro(Elemento,[_|Cdr]) :- miembro(Elemento,Cdr).

