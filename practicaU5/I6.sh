#!/usr/bin/env bash

#Crear un script que reciba como argumento un directorio, deberá validarse que exista y
#se tenga permisos para leerlo.
#Luego debe mostrar las siguientes estadísticas acerca de su contenido:
#	cantidad de archivos regulares
#	cantidad de directorios
#	cantidad de líneas de los archivos de texto

DIR=$1

#Se realizan las validaciones
[ ! -d $1 ] && echo "El directorio no existe o no es un directorio" && exit 1
[ ! -r $1 ] && echo "No tienes permiso de lectura" && exit 2

#Declaramos variables
CANT_ARCH_REG=0
CANT_DIR=0
CANT_LINEAS=0

#Iteramos en los archivos disponibles en la ruta DIR
for arch in $(ls $DIR)
do
#Si es un regular, realiza sumas y indica cantidad de lineas (no pedido en enunciado, pero para probar)
	if [ -f $arch ]
	then
		let CANT_ARCH_REG++
		LINEAS=$(wc -l < $arch)
		echo "$arch tiene $LINEAS lineas"
		CANT_LINEAS=$(($CANT_LINEAS + $LINEAS))
	fi
#Si es regular, realiza sumas
	[ -d $arch ] && let CANT_DIR++

done

#Se muestran resultados
echo "Cantidad de archivos regulares: $CANT_ARCH_REG"
echo "Cantidad de directorios: $CANT_DIR"
echo "Cantidad total de lineas: $CANT_LINEAS"

exit 0
