#!/usr/bin/env bash

#Crear un script que reciba dos rutas a archivos de texto y que indique si estos archivos
#tienen la misma cantidad de líneas. Validar que los archivos existen y se pueden leer.

ARCH1="$1"
ARCH2="$2"

#Verificar si los archivos existen y se pueden leer


if [ ! -e $ARCH1 ]
then
  echo "El archivo $ARCH1 no existe"
  exit 1
elif [ ! -r $ARCH1 ]
then
  echo "El archivo $ARCH1 no se puede leer"
  exit 2
fi

if [ ! -e $ARCH2 ]
then
  echo "El archivo $ARCH2 no existe"
  exit 3
elif [ ! -r $ARCH2 ]
then
  echo "El archivo $ARCH2 no se puede leer"
  exit 4
fi

#Contar las lineas de cada archivo
LINEAS_ARCH1=$(wc -l < $ARCH1)
LINEAS_ARCH2=$(wc -l < $ARCH2)

[ $LINEAS_ARCH1 -eq $LINEAS_ARCH2 ] && echo "Los archivos tienen la misma cantidad de líneas" && exit 5

echo "Los archivos tienen diferentes cantidad de líneas"

exit 0
