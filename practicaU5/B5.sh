#!/bin/bash

read -p "Dia: " DIA && read -p "Mes: " MES && read -p "A�o: " ANIO &&
date -d "$MES/$DIA/$ANIO" > /dev/null 2>&1 &&
echo "Fecha valida" ||
echo "Fecha no valida"

exit 0
