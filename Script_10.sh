#!/bin/bash

read -p "Introduce el número que se corresponda con el producto que deseas comprar:
1) KitKat: 4€
2) Donetes: 2€
3) Cereales: 1€
4) Salir
 " option

case $option in
	 1) read -p "Introduce 4€ en monedas. No aceptamos monedas de 1 ni de 2 céntimos: " money
		if [[ $money = 4 ]]; then
			echo "Gracias buen provecho. Aunque, ¿no es un poco caro un KitKat como para costar 4€? ¿No te sientes estafado?"
		fi
		if [[ $money -gt 4 ]]; then
			echo "El cambio es de "$((money - 4))
		fi
		if [[ $money -lt 4 ]]; then
			echo "Aún no has introducido 4€. Te falta "$((4 - money))
		fi
		;;

	 2) read -p "Introduce 2€ en monedas. No aceptamos monedas de 1 ni de 2 céntimos: " money
		if [[ $money = 2 ]]; then
			echo "Gracias buen provecho."
		fi
		if [[ $dinero -gt 2 ]]; then
			echo "El cambio es de "$((money - 2))
		fi
		if [[ $dinero -lt 2 ]]; then
			echo "Aún no has introducido 2€. Te falta "$((2 - money))
		fi
		;;

	 3) read -p "Introduce los 1 euro: " dinero
		if [[ $money = 1 ]]; then
			echo "Gracias buen provecho. Espero que tengas leche para echar los cereales, la cual también ofrecemos por un módico precio de 3€ en la máquina de al lado"
		fi
		if [[ $dinero -gt 1 ]]; then
			echo "El cambio es de "$((money - 1))
		fi
		if [[ $dinero -lt 1 ]]; then
			echo "Aún no has introducido 1€. Te faltan "$((1 - money))
		fi
		;;
		
	 *) exit 0
		;;
		
esac