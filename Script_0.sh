#!/bin/bash
echo "Introduzca el comando sobre el que desea informarse: "
	read comando
if [$# -lt 1] then
	echo "Error. No se ha introducido ningún parámetro."
else
	echo "La información sobre el comando introducido es la siguiente: "
	man $comando
fi