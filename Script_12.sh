#!/bin/bash

read -p "Introduce el número del que deseas saber su tabla de multiplicar: " num
echo "He aquí lo que seas: "

for (( i = 1; i <= 10; i++ )); do
	result=$(($num * $i))
	echo "$num * $i = $result"
done
