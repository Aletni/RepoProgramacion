#!/bin/bash

if ls -l $1
then
	echo "Tarea realizada"
else
	echo "Tarea no realizada"
fi
