#!/usr/bin/env bash


#Crear una lista con todos los checksums de los archivos en la carpeta "imagenes/":
LISTA_CHECKSUM=()

for imagen in $(ls imagenes/)
do
	echo "$imagen"
	LISTA_CHECKSUM+=($(md5sum "imagenes/$imagen"))
done

#Cantidad de valores en la lista (2 por archivo)
#echo "${#LISTA_CHECKSUM[@]}"

#Mostrar lista de checksums
#for i in "${LISTA_CHECKSUM[@]}"
#do
#echo "$i"
#done

#Borrar el comprimido, si ya existe:
rm imagenes.tar.gz

#Comprimir imagenes. Para que sea en un solo archivo, hay que usar tar (según ChatGPT y mis pruebas):
tar zcvf imagenes.tar.gz imagenes/

#----------------
#HASTA ACA LLEGUE
#----------------

#Listar archivos dentro de comprimido:
#tar -zxvf imagenes.tar.gz -O | cut -d ' ' -f 1 SE VA TODO A LA MIERDA CON ESTO

#echo "$(ls imagenes.tar.tz/imagenes/)"

exit 0
