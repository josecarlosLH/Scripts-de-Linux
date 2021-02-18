#!/bin/bash

echo "No te preocupes si te encuentras un archivo .txt creado. Ahí encontrarás la palabra que tendrás que acertar. Si quieres cambiarla, basta con que la cambias por aquella que desees."
if [[ ! -e word.txt ]]; then
	$(echo "electroencefalografista" > word.txt)
fi

keyword=$(cat word.txt)
read -p "Introduce la palabra que creas que es: " op
option =${op,,}
if [[ $keyword == option ]]; then
	echo "Enhorabuena. Acabas de introducir la palabra más larga de la RAE, la cual resulta ser $1, la misma que has introducido."
else
	echo "No, no es esa. Inténtalo otra vez."
fi