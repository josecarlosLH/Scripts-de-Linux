#!/bin/bash

read -p "Indica el nombre de fichero que deseas convertir en ejecutable: " file
if [[ ! -f $file ]]; then
	read -p "El fichero no existe. ¿Quieres crear el fichero $file? S/N: " op
	option = ${op^}
	if [[ $option == "S" ]]; then
		echo > $file
	fi
fi
if [[ -r $file && -w $file ]]; then
	chmod ug+x $file
	ls -l $file
	echo "Ya está listo para ejecutar. De nada."
else
	echo "El fichero no tiene permisos de lectura-escritura."
fi