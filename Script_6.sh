#!/bin/bash

read -p "Introduce tu edad: " age

if [[ $age -ge 18 ]]; then
	echo "Eres mayor de edad. A no ser que residas en un estado de EEUU en el que sea a partir de 21..."
else
	echo "Eres menor de edad. Adiós."
fi