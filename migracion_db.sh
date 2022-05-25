#!/bin/bash

####################################################################
##### Script utilizado para la migración de la bd de dev a pro #####
####################################################################

# Variables necesarias para la creación de los backups
fecha=$(date +%Y-%m-%d-%H-%M-%S)
folder="db_backups"
sqlDump="sqlDump-$fecha.sql"
fullPath="$folder/$sqlDump"
dbRootPass=$(cat .secret_root.txt | openssl enc -aes-256-cbc -md sha512 -a -d -pbkdf2 -iter 100000 -salt -pass pass:'secret#vault!password')
mkdir -p  $folder

# Generar el backup del contenedor.
echo ''
echo  'Generando copia de la base de datos...'
echo '---------------------------------------------------'
docker exec mysql-dev sh -c "exec mysqldump --all-databases -u root -p$dbRootPass" > $fullPath
chmod +x $fullPath

# Importar la base de datos al pod de mysql.
echo ''
echo 'Volcando la base de datos en el pod de mysql...'
echo '---------------------------------------------------'
#kubectl exec -i mysql-wp-74b4cc6fb8-cgr82   -n brizzom -- mysql -u root -p$dbRootPass -e "DROP DATABASE db_brizzom;"
#kubectl exec -i mysql-wp-74b4cc6fb8-cgr82   -n brizzom -- mysql -u root -p$dbRootPass -e "CREATE DATABASE db_brizzom;"
kubectl exec -i  mysql-wp-74b4cc6fb8-cgr82   -n brizzom -- mysql -u root -p$dbRootPass < $fullPath

# Corrección de las urls de la base de datos.
echo ''
echo 'Rectificando urls de la base de datos...'
echo '---------------------------------------------------'
kubectl exec -n brizzom mysql-wp-74b4cc6fb8-cgr82   -- mysql -u root -p$dbRootPass db_brizzom -e "UPDATE wp_options SET option_value='http://192.168.49.2:30080' where option_name='siteurl';"
kubectl exec -n brizzom mysql-wp-74b4cc6fb8-cgr82  -- mysql -u root -p$dbRootPass db_brizzom -e "UPDATE wp_options SET option_value='http://192.168.49.2:30080' where option_name='home';"

# Eliminando fichero sqlDump por seguridad.
rm $fullPath
