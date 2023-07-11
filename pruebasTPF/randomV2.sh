#!/usr/bin/env bash


#Determino el número de lineas de nombres prueba:

LINEAS=$(wc -l < "nombres_prueba.txt")

#Determino un valor random entre 1 y el número de líneas:

ALEATORIO=$((1 + $RANDOM % $LINEAS))

#Busco el nombre en la posición (linea) aleatoria determinada antes:

NOMBRE=$(sed -n "${ALEATORIO}p" "nombres_prueba.txt")

#Corto hasta la coma en el nombre:

CORREGIDO=$(echo $NOMBRE | cut -d"," -f1)

echo "$CORREGIDO"

exit 0
