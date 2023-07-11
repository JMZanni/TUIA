#!/usr/bin/env bash

#Determino el n�mero de lineas de nombres prueba:

LINEAS=$(wc -l < "dict.csv")

#Determino un valor random entre 1 y el n�mero de l�neas:

ALEATORIO=$((1 + $RANDOM % $LINEAS))
#CUIDADO: EL LIMITE DE LA FUNCI�N RANDOM ES 32768. EL ARCHIVO DICT.CSV SUPERA ESA CANTIDAD EN LINEAS.

#Busco el nombre en la posici�n (linea) aleatoria determinada antes:

NOMBRE=$(sed -n "${ALEATORIO}p" "dict.csv")

#Corto hasta la coma en el nombre:

CORREGIDO=$(echo $NOMBRE | cut -d"," -f1)

echo "Cantidad de l�neas: $LINEAS"
echo "Posicion aleatoria: $ALEATORIO"
echo "Nombre seleccionado: $CORREGIDO"

exit 0
