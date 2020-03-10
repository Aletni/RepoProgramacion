#!/bin/bash

arg=$#
for ((a=1;a<=arg;a++))
do
	echo "$*"
	shift
done
