#!/bin/bash

####################################################################
#####  Script utilizado para él despliegue del entorno de pro  #####
####################################################################
echo ''
echo  'Aplicando la configuración al clúster de kubernetes...'
echo '---------------------------------------------------------'
cd wordpress
kubectl apply -f namespace-brizzom.yaml
kubectl apply -k .
kubectl apply -f pv-mysql.yaml
kubectl apply -f pv-wordpress.yaml
kubectl apply -f pv-claim-mysql.yaml
kubectl apply -f pv-claim-wordpress.yaml
kubectl apply -f configmap-wordpress.yaml
kubectl apply -f deployment-mysql.yaml
kubectl apply -f deployment-wordpress.yaml

