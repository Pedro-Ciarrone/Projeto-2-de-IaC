#!/bin/bash

echo "Verificando e instalando atualizações do sistema..."

apt-update 
apt-upgrade -y

echo "Instalando os programas necessários..."

apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando os arquivos da aplicação"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

