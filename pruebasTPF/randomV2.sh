#!/usr/bin/env bash


#Determino el n�mero de lineas de nombres prueba:

LINEAS=$(wc -l < "nombres_prueba.txt")

#Determino un valor random entre 1 y el n�mero de l�neas:

ALEATORIO=$((1 + $RANDOM % $LINEAS))

#Busco el nombre en la posici�n (linea) aleatoria determinada antes:

NOMBRE=$(sed -n "${ALEATORIO}p" "nombres_prueba.txt")

#Corto hasta la coma en el nombre:

CORREGIDO=$(echo $NOMBRE | cut -d"," -f1)

echo "$CORREGIDO"

exit 0
