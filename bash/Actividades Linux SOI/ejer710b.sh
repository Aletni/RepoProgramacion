#!/bin/bash

cadena=si
until [ $cadena == "fin" ] || [ $cadena == "end" ]
do
	echo "Dame una cadena"
	read cadena
	clear
	echo "La cadena introducida es: " $cadena
done
