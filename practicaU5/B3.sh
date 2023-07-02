#!/bin/bash

if [ $# -eq 0 ]
then
	echo "No se ingresaron argumentos"
	exit 1
fi

if [ $(($# % 2)) -eq 0 ]
then
	echo "Argumentos pares"
else
	echo "Argumentos impares"
fi

exit 0

