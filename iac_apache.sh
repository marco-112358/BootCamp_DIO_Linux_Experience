#!/bin/bash

#----------------------------
#Autor: Marco Aurélio Andrade
#Data : 07/08/2022
#----------------------------

echo ""
echo "Atualizando o Servidor. (Aguarde...)"
echo ""

apt update && apt upgrade -y

echo ""
echo "Feito!"
echo ""

echo "Instalando o Apache2. (Aguarde...)"
echo ""

apt install apache2 -y

echo ""
echo "Feito!"
echo ""

echo "Instalando o unzip. (Aguarde...)"
echo ""

apt install unzip -y

echo ""
echo "Feito!"
echo ""

echo "Baixando app para /tmp (Aguarde...)"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo ""
echo "Feito!"
echo ""

echo "Copiando app para /var/www/html (Aguarde...)"

cp -R /var/www/html

echo "--------------------- PROCESSO FINALIZADO! -------------------"

