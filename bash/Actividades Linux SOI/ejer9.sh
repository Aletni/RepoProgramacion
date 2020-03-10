#!/bin/bash 

# Funciones

argumentoFichero ( )
{
	for i in "$@"
	do
		([ -f "$i" ] && echo "El argumento $i es un fichero") || ([ ! -f "$i" ] && echo "El argumento $i no es un fichero")
	done
}

function ficheroExiste ()
{
	echo "Dame el nombre de un fichero"
	read fichero
	([ -r "$fichero" ] && head -5 "$fichero") || ([ ! -r "$fichero" ] && echo "El fichero no existe o no tiene permiso de lectura")
}

function doblesComprendidos ()
{
	if [ $1 -gt $2 ]
	then
		mayor=$1
		menor=$2
	else
		mayor=$2
		menor=$1
	fi

	for((i=menor+1;i<mayor;i++))
	do
		echo "El doble de $i es" $(expr $i \* 2)
	done
}

function parImpar ()
{
	medio=$(expr $# / 2)
	if [ $(expr $# % 2) -eq 0 ]
	then
		for((i=0;i<medio;i++))
		do
			shift
		done
		echo "El argumento central es $1"
	else
		for((i=0;i<medio;i++))
		do
			shift
		done
		echo "Los argumentos centrales son $1 y $2"
	fi
}

# Programa principal
clear
if [ $# -ge 3 ]
then
while 
	echo "Menu"
	echo "[V] Vacío"
	echo "[P] Primeras"
	echo "[D] Doble"
	echo "[M] Mitad"
	echo "[F] Fin"
	read opcion
	[ $opcion != "F" ]
do
	case $opcion in
		V|v) argumentoFichero $@;; 
		P|p) ficheroExiste;;
		D|d) doblesComprendidos $1 $2;;
		M|m) parImpar $# $*;;
		F|f) echo Fin del programa;;
	esac

done
echo "Fin del programa"
else
	echo "Error de sintaxis"
fi
