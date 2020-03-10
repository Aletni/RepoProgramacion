#!/bin/bash

#Funciones
function ordenados () {
	while [ $# -ne 2 -a $1 -le $2 ]
	do
		shift
	done

	[ $1 -le $2 ] && echo Ordenados || echo Desordenados
}

function enlaces () {
	echo "Dame el nombre de un directorio"
	read directorio

	for i in "$@"
	do 
		([ -x $i ] && (ln $i $directorio/"$i"_enlace)) || echo "No es un fichero o no puedo ejecutarlo"
	done
}

function listado () {
	for i in "$@"
	do
		if [ -d $i ]
		then
			direct=$(expr $direct + 1)
		elif [ -s $i ]
		then
			fichero=$(expr $fichero + 1)
		else
			echo "El argumento $i no es un fichero no vacío o directorio"
		fi
	done
	echo "El numero de directorios es $direct"
	echo "El numero de ficheros no vacios es $fichero"
}

function resto () {
	num=$1
	shift
	for i in "$@"
	do
		echo "El resto de la division $i entre $num es $(expr $i % $num)"
		num=$i	
	done
}

function contar () {
	echo "Introduce el nombre de un nuevo fichero"
	read fichero
	[ ! -f $fichero ] && wc $* > $fichero || echo "Ese fichero ya existe"	
}

#Programa principal
clear
if [ $# -gt 2 ]
then
	while
		echo "Menu"
		echo "[O] Ordenados"
		echo "[D] Directorio"
		echo "[L] Listado"
		echo "[R] Resto"
		echo "[C] Contar"
		echo "[F] FIN"
		read op
		[ $op != "F" ]
	do
		case $op in
			O) ordenados $@;;
			D) enlaces $@;;
			L) listado $@;;
			R) resto $@;;
			C) contar $@;;
		esac
	done
	echo "Fin del programa"
else
	echo "Error de sintaxis"
fi
