#!/bin/bash

# borrar copia del volumen anterior
rm -R Wordpress/wordpress

# copiar el contenido del direcotorio /var/www/html del contenedor de brizozm-dev a el directorio Wordpress/wordpress
docker cp brizzom-dev:/var/www/html Wordpress/wordpress

# construir la imagen
cd Wordpress
read -p "¿Que version de la imagen es? [latest]: " version
if [[ "$version" == "" ]]
then
   docker build -t bmartinez7m/brizzom:latest .
else
   docker build -t bmartinez7m/brizzom:$version -t bmartinez7m/brizzom:latest .
fi

# loguearse en docker hub
docker login

# subir imagen a docker hub
docker push bmartinez7m/brizzom:$version
docker push bmartinez7m/brizzom:latest