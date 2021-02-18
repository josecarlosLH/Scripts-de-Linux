#!/bin/bash

echo "Hola. Cuando introduzcas una tecla, diré si es número, letra o carácter especial. Si deseas pararme, pulsa 0."
while true; do
	read -rsn1 key
	if [[ "$key" = [0-9] ]]; then
		echo "Has introducido un número"
	elif [[ "$key" = [a-z,A-Z] ]]; then
		echo "Has introducido una letra"
	else
		echo "Has introducido un carácter especial"
	fi
	if [[ "$key" = 0 ]]; then
		exit 0
	fi
done