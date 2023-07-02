#!/bin/bash

#Crear un script que reciba una cantidad de argumentos (no limitado) y los escriba
#(todos juntos) en un archivo llamado /tmp/args. Finalmente mostrar el archivo.

#Creo el archivo
touch /tmp/args
echo -n > /tmp/args

#Escribo cada argumento de entrada en /tmp/args

for ARG in $@
do
	echo $ARG >> /tmp/args
done

#Mostrar contenido del archivo
cat /tmp/args

exit 0
