#!/bin/bash

#Para mostrar los comandos que se van ejecutando
set -ex

#Actualizamos los repositorios
apt update

#Actualizamos los paquetes
apt upgrade -y

#Instalamos MYSQL server
sudo apt install mysql-server -y

# Configuramos el archivo etc/mysql/mysql.conf.d/mysqld.conf
sed -i "s/127.0.0.1/$MYSQL_PRIVATE_IP/" 