#!/bin/bash

user=$(whoami)

if [[ $user == blas ]]; then
	for i in {1..5}
	do
	   echo $i . $user
	done
else
	echo "Hasta pronto, querido $user . Esperamos volver a verle muy pronto usando este script hecho, exclusivamente, para su disfrute. Un beso $user"
fi
