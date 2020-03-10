#!/bin/bash

echo "Desea salir?"
read opcion

case $opcion in
	s|S|SI|si) 
		clear
		exit;;
	n|N|NO|no)
		echo $opcion
		exit;;
	*) echo "La opcion introducida no es correcta"
esac
