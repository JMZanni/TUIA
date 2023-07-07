#!/usr/bin/env bash

#Crear un script que reciba la ruta absoluta a un archivo e indique si existe o no y si se
#trata de un archivo regular o un directorio.

#FILE=$1

#[ ! -e FILE ] && echo "No existe el archivo o directorio" && exit 1
#[ -f FILE ] && echo "El archivo es un regular" && exit 2
#[ -d FILE ] && echo "El archivo es un directorio" && exit 3

#exit 0

#Resolución DonGPT

# Verificar si se proporcionó la ruta como argumento
if [ $# -ne 1 ]; then
  echo "Debe proporcionar la ruta absoluta a un archivo como argumento."
  exit 1
fi

# Obtener la ruta del archivo del primer argumento
ruta="$1"

# Verificar si el archivo o directorio existe
if [ -e "$ruta" ]; then
  echo "El archivo/directorio $ruta existe."

  # Verificar si es un archivo regular
  if [ -f "$ruta" ]; then
    echo "Es un archivo regular."
  elif [ -d "$ruta" ]; then
    echo "Es un directorio."
  else
    echo "Es otro tipo de archivo."
  fi
else
  echo "El archivo/directorio $ruta no existe."
fi

exit 0
