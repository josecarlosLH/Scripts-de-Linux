#!/bin/bash

direcCounter=0
fileCounter=0
for i in $#; do
	if [[ -d $i ]]; then
		direcCounter=$(($direcCounter+1))

	elif [[ -f $i ]]; then
		fileCounter=$(($fileCounter+1))
	fi
done

echo "El número de directorios encontrados es $contadorDirectorios"
echo "El número de archivos encontrados es $contadorFicheros2"