#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y


echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/RicardomrCuba/linux-Projeto-2-DIO/main.zip
unzip main.zip
cd linux-Projeto-2-DIO
cp -R * /var/www/html/