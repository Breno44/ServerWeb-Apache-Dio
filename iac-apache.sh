#!/bin/bash

echo "Atualizando servidor....."

apt-get update
apt-get upgrade -y

echo "Sistema atualizado....."

echo "Instalando Apache e Unzip....."

apt-get install apache2 -y
apt-get install unzip -y

echo "Aplicações instaladas....."

echo "Baixando site....."

cd temp/
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip 
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Site baixado....."

echo "Site funcionando....."
