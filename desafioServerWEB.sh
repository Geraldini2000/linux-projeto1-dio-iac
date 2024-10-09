#!/bin/bash

echo "Iniciando o script"
#Atualizando o sistema operacional
apt update
apt upgrade -y

#Instalando o apache2
apt install apache2 -y

#unzip para extrair o pacote
apt install unzip -y

#Entrando no diretorio temp
cd /tmp

#Baixar aplicacao
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

#Extraindo o arquivo
unzip main.zip

#Apagando index padrao do apache
cd /var/www/hmtl/
rm index.html

#Copiando os arquivos para o apache
cp /tmp/linux-site-dio-main/* /var/www/html/  -r -v

echo "Script finalizado"
