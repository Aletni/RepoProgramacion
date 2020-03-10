#!/bin/bash

opcion=1
while (($opcion==1|2|"uno"|"dos"))
do
	echo "Menu"
	echo "1) Visualizar un listado largo del directorio de trabajo"
	echo "2) Visualizar el directorio de trabajo"
	echo "3) Salir"
	echo "Pulse una opcion"
	read opcion

	case $opcion in
		1|"uno") ls -l $PWD;;
		2|"dos") pwd;;
		3|"tres") echo "Fin del programa"
			exit;;
		*) echo "Opcion erronea";;
	esac
done
