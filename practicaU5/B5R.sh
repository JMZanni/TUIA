#!/usr/bin/env bash

#Crear un script que reciba como argumento tres números, indicando día, mes y año y
#determine si estos valores corresponden o no a una fecha válida.
#Emplear construcciones de test (corchetes [ ]) y operadores lógicos (&& por ejemplo).
#Fechas inválidas: son las que posean números no positivos y/o demasiado grandes para lo que
#representan, o bien no corresponden los días al mes indicado para el año establecido.
#Tip: puede ser de ayuda el comando date

[ $# -ne 3 ] && echo "La cantidad esperada de argumentos es 3" && exit 1

DIA=$1
MES=$2
ANIO=$3

date -d "$MES/$DIA/$ANIO" > /dev/null 2>&1 &&
echo "Fecha valida" || echo "Fecha no valida"

exit 0
