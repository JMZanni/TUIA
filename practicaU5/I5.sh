#!/usr/bin/env bash

#Crear un script que permita recibir tres argumentos: una palabra P, un n�mero positivo n
#y una ruta. Se debe validar la cantidad de argumentos, que n cumpla los requerimientos y
#se tenga permiso de escritura en la ruta indicada.

P=$1
N=$2
RUTA=$3

#Verifico las condiciones

[ $# -ne 3 ] && echo "La cantidad de argumentos es menor que 3" && exit 1
[ $2 -le 0 ] && echo "Ha ingresado un n�mero n menor que 0" && exit 2
[ ! -d $RUTA ] && echo "No existe la ruta ingresada" && exit 3
[ ! -w $RUTA ] && echo "No tiene permiso de escritura en la ruta ingresada" && exit 3


#Establezco la ruta y nombre del archivo a crear

ARCH=$RUTA"Palabra_"$P".dat"

echo "$ARCH"

#Borro el archivo anterior por si ya existia

[ -e $ARCH ] && rm $ARCH

#Creo el archivo y agrego una linea en cada iteraci�n

for i in $(seq 1 $N)
do
	echo "Se ingreso la palabra $P" >> $ARCH
done

#Agregue que el programa me verifique la cantidad de lineas

LINEAS=$(wc -l < $ARCH)

echo "El archivo tiene $LINEAS"

exit 0
