#!/usr/bin/env bash

#Construya un script que reciba una cadena, el script debe validar si la cadena
#ingresada es una dirección IP válida.
#Ejemplo de dirección IP válida: 192.168.0.1 (son cuatro enteros entre 0 y 255 separados por punto)

#BLOQUE_TIPO1='[0-9]{1,2}' #Numeros entre 0 y 99
#BLOQUE_TIPO2='1[0-9]{2,2}' #Numeros entre 100 y 199
#BLOQUE_TIPO3='2[0-5][0-9]' #Numeros entre 200 y 255

#Primero pruebo condiciones para numeros entre 0 y 255.
#NO FUNCIONÓ
read -p "Ingrese un número:" $numero

case $numero in
	[0-9]|[1-9][0-9])
	echo "Numero entre 0 y 99, pero no es una IP"
	exit 1
	;;
	1[0-9][0-9])
	echo "Numero entre 100 y 199, pero no es una IP"
	exit 1
	;;
	2[0-5][0-9])
	echo "Numero entre 200 y 255, pero no es una IP" 
	exit 1
	;;
	*)
	echo "El número es mayor a 255"
	;;
esac
#NO FUNCIONA

exit 0
