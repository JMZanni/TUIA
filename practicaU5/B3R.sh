#!/bin/bash

#Crear un script que reciba una cantidad de argumentos sin definir e indique si recibi�
#una cantidad par o impar de argumentos. Emplear construcciones de test (corchetes [ ]) y
#operadores l�gicos (&& por ejemplo).

[ $(($#%2)) -eq 0 ] && echo "Cantidad de argumentos par" || echo  "Cantidad de argumentos impar"

exit 0
