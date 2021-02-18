#!/bin/bash

read -p "Introduce el nombre del archivo o directorio que deseas eliminar: " file
if [[ -e $file ]]; then
	if [[ -d $file ]]; then
			read -p "¿Quieres borrar el archivo $1? (S/N): " op
			option =${op^}
			if [[ $option == "S" ]]; then
				rm -r $file
			fi
			
	else
			read -p "¿Quieres borrar el archivo $1? (S/N): " op
			opcion =${op^}
			if [[$option == "S" ]]; then
				rm $file
			fi
	fi	
else
	echo "No existe el directorio o fichero introducido."
fi