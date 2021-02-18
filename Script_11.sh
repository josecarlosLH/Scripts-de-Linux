#!/bin/bash

read -p "Introduzca la ruta del directorio para saber el número de archivos y directorios que hay en su interior: " direc

direcCounter=$(find $direc/* -type f | wc -l)
fileCounter=$(find $direc/* -type d | wc -l)

echo "Dentro del directorio hay $direcCounter directorios y $fileCounter ficheros."