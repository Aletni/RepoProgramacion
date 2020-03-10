#!/bin/bash

arg=$#
suma=0
producto=1

for ((a=1;a<=arg;a++))
do
	((suma=suma+$1))
	((producto=producto*$1))
	shift
done

echo "La suma es: " $suma
echo "El producto es: " $producto
