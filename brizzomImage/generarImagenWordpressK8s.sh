#!/bin/bash



# copiar el contenido del direcotorio /var/www/html del contenedor de brizozm-dev a el directorio Wordpress/wordpress
docker cp brizzom-dev:/var/www/html/ Wordpress-k8s/


# construir la imagen
cd Wordpress-k8s 
read -p "¿Que version de la imagen es? [latest]: " version
if [[ "$version" == "" ]]
then
   docker build -t bmartinez7m/brizzom:k8s-latest --no-cache .
else
   docker build -t bmartinez7m/brizzom:k8s-$version -t bmartinez7m/brizzom:k8s-latest --no-cache .
fi

# loguearse en docker hub
docker login

# subir imagen a docker hub
docker push bmartinez7m/brizzom:k8s-$version
docker push bmartinez7m/brizzom:k8s-latest