#!/bin/bash

if (($#==0))
then
	echo "Sintaxis: nombre_script arg1 arg2 ..."
elif (($#==1))
then
	echo $1
elif (($#==2))
then
	if(($1==$2))
	then
		echo "arg1 es igual a arg2"
	else
		echo "arg1 y arg2 son diferentes"
	fi
elif (($#==3)) || (($#==4))
then
	echo "3 o 4 argumentos"
fi
