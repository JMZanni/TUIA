#!/usr/bin/env bash

#Puedo asignar la dirección de la imagen (suponiendo que no cambia) en una URL
#URL_IMAGEN="https://cdn.myanimelist.net/images/anime/1384/136408l.jpg"
URL_IMAGEN="https://thispersondoesnotexist.com/"

#Por ahora uso un solo nombre, despues genraré un generador de nombres
NOMBRE_IMAGEN="Descargas/imagen.jpg"

#Creo la carpeta descarga, si es que no existe
[ -e "./Descargas" ] || mkdir "Descargas"

#Utilizo el comando "curl" para la descarga de imagenes
wget -O $NOMBRE_IMAGEN $URL_IMAGEN

exit 0
