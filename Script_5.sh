#!/bin/bash

read -p "Bienvenido a este increíble programa. Introduce el número correspondiente con la operación que desees ejecutar. Ten en cuenta que introducirás dos números : 
1) Suma
2) Resta
3) Multiplicación 
4) Salir 
 " option

case $option in
	1)  read -p "Primer número: " n1
		read -p "Segundo número: " n2
		sum=$(($n1 + $n2))
		echo "$n1 + $n2 = $sum"
	;;

	2)  read -p "Primer número: " n1
		read -p "Segundo número: " n2
		subtraction=$(($n1 - $n2))
		echo "$n1 - $n2 = $subtraction"
	;;

	3)  read -p "Primer número: " n1
		read -p "Segundo número: " n2
		multi=$(($n1 * $n2))
		echo "$n1 * $n2 = $multi"
	;;

	4) exit 0
	;;

	*) echo "Esta opción no está definida, así que cerraré el script."
		exit0
esac