#!/usr/bin/env bash

#Poner nombres de txt en la lista, sin separar por espacios

IFS=$'\n' LISTA=($(cat nombres_prueba.txt))

#Imprimr Nombres de lista

for nombre in "${LISTA[@]}"
do
	CORREGIDO=$(echo $nombre | cut -d"," -f1)
	LISTA_CORREGIDA+=("$CORREGIDO")
done

#Explicación "cut":
# `$cadena`: es una variable que contiene la cadena que deseamos procesar.
# `echo $cadena`: es un comando que imprime la cadena en la salida estándar.
# `|`: es un operador de tubería (pipe) que redirige la salida del comando anterior a la entrada del siguiente comando.
# `cut`: es un comando que se utiliza para extraer secciones de cada línea de un archivo o de una cadena de texto.
# `-d','`: es una opción de `cut` que especifica la coma (",") como separador de campos.
# `-f1`: es una opción de `cut` que indica que deseamos extraer el primer campo de la cadena, es decir, todo lo que está antes de la primera coma.

#En resumen, la línea de código `$(echo $cadena | cut -d',' -f1)` toma la cadena almacenada en la variable `$cadena`, 
#la imprime en la salida estándar, la redirige a `cut`, que extrae todo lo que está antes de la primera coma y lo devuelve como resultado. 
#El resultado se almacena en una variable o se utiliza directamente en otra parte del script.


#Prueba para saber que se ha creado correctamente la lista corregida
#for nombre in "${LISTA_CORREGIDA[@]}"
#do
#        echo "$nombre"
#done

#Finalmente, se imprime un elemento de una posición al azar de la LISTA CORREGIDA, utilizando el comando RANDOM
echo ${LISTA_CORREGIDA[$RANDOM % ${#LISTA_CORREGIDA[@]}]}

exit 0
