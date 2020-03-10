#!/bin/bash 

clear
if [ $# -ge 2 ]
then
	while
		echo "Menu"
		echo "[Uno] Sumar argumentos multiplos de 3"
		echo "[Dos] Ficheros con permiso de escritura"
		echo "[Tres] Ocurrencias del nombre del script"
		echo "[Fin] Fin"
		read opcion
		[ $opcion != "Fin" ]
	do
		case $opcion in
			U|[Uu]no)
				suma=0
				for i in "$@"
				do
					if [ $(expr $i % 3) -eq 0 ] 
					then
						suma=$(expr $suma + $i)			
					fi
				done
				echo "La suma es:" $suma;;
			D|[Dd]os)	 
				echo "Introduce el nombre de un fichero: "
				read fichero 
				([ -f "$fichero" -a -w "$fichero" ] && echo "$fichero tiene permiso de escritura") || echo "No existe ese fichero o no tiene permiso de escritura";;
			T|[Tt]res) 
				contador=0
				until [ $# -eq 0 ]
				do	
					if [ "$0" == "$PWD/$1" ]
					then
						contador=$(expr $contador + 1)	
					fi
					shift				
				done
				echo "El numero de veces que el nombre del script coincide con los argumentos es" $contador;;
			Fin) echo "Fin del programa"
		esac
	done
	echo "Fin del programa"
else
	echo "Error de sintaxis"
fi
