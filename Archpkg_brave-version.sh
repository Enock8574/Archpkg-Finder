#!/bin/bash

#Navegador a utilizar
nav="brave"

echo "Que paquete deseas buscar?"
read -r pkg

nc -z 8.8.8.8 53 >/dev/null 2>&1
online=$?
if [ $online -eq 0 ]; then
	"$nav" https://archlinux.org/packages/"$pkg"
else
	echo "Por favor conectate a internet..."
fi

