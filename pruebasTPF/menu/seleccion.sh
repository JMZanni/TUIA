#!/usr/bin/env bash

PS3='Seleccione>'
echo "Elija una opci�n"
select opcion in "Salir" "Hola" "Insulto" "Chau"
do
#	[ -e $opcion ] && echo "Elegir opcion valida!" && continue
	[ $REPLY == 1 ] && echo "Me fui" && break
	[ $REPLY == 2 ] && bash "hola.sh" && continue
        [ $REPLY == 3 ] && bash "insulto.sh" && continue
        [ $REPLY == 4 ] && bash "chau.sh" && continue
	echo "Opci�n elegida: " $opcion
done

exit 0
