#!/bin/bash

echo "Introduce un numero" 
read num1
echo "Introduce otro numero"
read num2

echo "La suma de los valores introducidos es: " $((num1+num2))
echo "El producto de los valores introducidos es: " $((num1*num2))
