#!/usr/bin/env bash

#Crear un script donde se ingrese una serie de n�meros enteros y se devuelva la suma
#de los mismos, se permitir� el ingreso de un m�ximo de 10 n�meros y solo se deben sumar
#los argumentos v�lidos (los que representen un n�mero).

#Tips: utilizar shift y esta expresi�n regular
#ES_NUMERO='^-?[0-9]+$'

#Soluci�n 1

ES_NUMERO='^-?[0-9]+$'

if [ $# -gt 10 ]
then
	echo "Se aceptan 10 argumentos como m�ximo"
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
