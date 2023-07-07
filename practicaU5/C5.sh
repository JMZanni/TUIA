#!/usr/bin/env bash

case $1 in
 [Jj]aunary)
	M='Enero'
	X=31
	;;
 [Ff]eubrary)
	M='Febrero'
	X=28
	;;
 [Mm]arch)
	M='Marzo'
	X=31
	;;
 [Aa]pril)
	M='Abril'
	X=30
	;;
#Para practicar, solo lo hago para los primeros cuatro meses
  *)
	echo "No ha ingresado un mes válido en ingles" && exit 1
esac

echo "El mes $M tiene $X dias"

exit 0


