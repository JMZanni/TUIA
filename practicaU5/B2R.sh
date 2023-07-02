#!/bin/bash

[ $# -ne 2 ] && echo "No hay dos argumentos" && exit 1

VAR_MES=$1
VAR_ANIO=$2

echo "$(cal $VAR_MES $VAR_ANIO)"

exit 0

