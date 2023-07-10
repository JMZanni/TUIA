#!/usr/bin/env bash

#Crear un script donde se ingrese una serie de números enteros y se devuelva la suma
#de los mismos, se permitirá el ingreso de un máximo de 10 números y solo se deben sumar
#los argumentos válidos (los que representen un número).

#Tips: utilizar shift y esta expresión regular
#ES_NUMERO='^-?[0-9]+$'

#Solución 1

ES_NUMERO='^-?[0-9]+$'

if [ $# -gt 10 ]
then
	echo "Se aceptan 10 argumentos como máximo"
	exit 1
fi

SUM=0

for ARG in $@
do
	if [[ $ARG =~ $ES_NUMERO ]]
	then
		SUM=$(($SUM + $ARG))
	fi
done

echo "La suma es: $SUM"
exit 0
