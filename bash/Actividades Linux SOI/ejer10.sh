#!/bin/bash

# Funciones
function calcularCubo ()
{
	for i in "$@"
	do
		if [ $i -gt 0 ]
		then
			triple=$(expr $i \* $i \* $i)
			echo "El cubo del argumento $i es $triple"
		elif [ $i -le 0 ]
		then
			echo "El argumento $i es negativo"
		fi
	done
}

function procesosEjecucion () {
	for i in "$@"
	do
		if [ " $i" == "$(ps -p $i -o pid=)" ]
		then
			echo "El argumento $i coincide con un PID."
		else
			echo "El argumento $i no coincide con un PID."
		fi
	done
}

function visualizarFicheros () {
	while
		echo "Introduce el nombre un fichero: "
		read nombre
		[ $nombre != "Terminar" ]
	do
		([ -f $nombre ] && tail -2 $nombre) || echo "No es un fichero"
	done
}

function recuento () {
	echo "Introduce el nombre del primer fichero"
	read nombre1
	echo "Introduce el nombre del segundo fichero"
	read nombre2

	([ -r $nombre1 ] && [ -r $nombre2 ] && (wc $nombre1 $nombre2 > recuento)) || echo "Alguno o los dos ficheros no tienen permiso de lectura"
}

function mayorMenor ()
{
	mayor=$1
	menor=$1

	for i in "$@"
	do
		if [ $i -gt $mayor ]
		then
			mayor=$i
		elif [ $i -lt $menor ]
		then
			menor=$i
		fi
	done
	
	echo "El argumento mayor es $mayor"
	echo "El argumento menor es $menor"
}

# Programa principal
clear
if [ $# -ge 2 ]
then
	while 
		echo "Menú"
		echo "[C] Calcular el cubo"
		echo "[P] Procesos en ejecución"
		echo "[V] Visualizar ficheros"
		echo "[R] Recuento"
		echo "[M] Mayor/Menor"
		echo "[F] FIN"
		echo "Pulsa una opción: "
		read op
		[[ ($op != F) && ($op != f) ]] 
	do
		case $op in
			C|c) calcularCubo $@;;
			P|p) procesosEjecucion $@;;
			V|v) visualizarFicheros;;
			R|r) recuento;;
			M|m) mayorMenor $@ $1;;
		esac
	done
	echo "Fin del programa"
else
	echo "Error de sintaxis"
fi
