#!/bin/bash

for i in "$@"
do
	if [ $i -gt 0 ]
	then
		suma=$(expr $suma + $i)
		((contador++))
	fi
done

if [ $contador -eq 0 ]
then
	echo "No hay argumentos positivos"
else
	media=$(expr $suma / $contador)
	echo "La media de los argumentos positivos es $media"
fi
