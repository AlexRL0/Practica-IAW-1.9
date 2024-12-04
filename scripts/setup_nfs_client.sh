#!/bin/bash

#Para mostrar los comandos que se van ejecutando
set -ex

# Importamos el archivo .env
source .env

#Actualizamos los repositorios
apt update

#Actualizamos los paquetes
apt upgrade -y

# Instalamos el cliente NFS
apt install nfs-common -y

# Montamos el directorio
mount $NFS_SERVER_IP:/var/www/html /var/www/html