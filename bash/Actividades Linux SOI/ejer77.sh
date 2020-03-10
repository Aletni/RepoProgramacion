#!/bin/bash

echo "Menu"
echo "1) Visualizar un listado largo del directorio de trabajo"
echo "2) Visualizar el directorio de trabajo"
echo "3) Salir"
echo "Pulse una opcion"
read opcion

case $opcion in
	1) ls -l $PWD;;
	2) pwd;;
	3) echo "Fin del programa";;
	*) echo "Opcion erronea";;
esac
