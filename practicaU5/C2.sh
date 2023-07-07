#!/usr/bin/env bash

#Crear un script que reciba una única cadena como argumento y determine si esa
#cadena es o no un palíndromo.
#Tip: utilizar el comando rev

ARG=$1
GRA=$(echo "$ARG" | rev)

[ "$GRA" == "$ARG" ] && echo "Es un poliandro" || echo "No es un poliandro"

exit 0
