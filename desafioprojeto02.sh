#!/bin/bash

echo "Iniciando script"
# Criando pastas
cd /
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios"

useradd carlos -c "Carlos" -m -s /bin/bash -G GRP_ADM
useradd maria -c "Maria" -m -s /bin/bash -G GRP_ADM
useradd joao -c "Joao" -m -s /bin/bash -G GRP_ADM

useradd debora -c "Debora" -m -s /bin/bash -G GRP_VEN
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -G GRP_VEN
useradd roberto -c "Roberto" -m -s /bin/bash -G GRP_VEN

useradd josefina -c "Josefina" -m -s /bin/bash -G GRP_SEC
useradd amanda -c "Amanda" -m -s /bin/bash -G GRP_SEC
useradd rogerio -c "Rogerio" -m -s /bin/bash -G GRP_SEC

# Definindo as senhas para cada usuário e forçando a alteração no próximo login
echo "Aplicando senhas aos usuarios"

echo "carlos:123456senha" | chpasswd
passwd carlos -e

echo "maria:123456senha" | chpasswd
passwd maria -e

echo "joao:123456senha" | chpasswd
passwd joao -e

echo "debora:123456senha" | chpasswd
passwd debora -e

echo "sebastiana:123456senha" | chpasswd
passwd sebastiana -e

echo "roberto:123456senha" | chpasswd
passwd roberto -e

echo "josefina:123456senha" | chpasswd
passwd josefina -e

echo "amanda:123456senha" | chpasswd
passwd amanda -e

echo "rogerio:123456senha" | chpasswd
passwd rogerio -e

echo "Aplicando Permissoes aos grupos"

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

chmod 770 /adm
chmod 770 /sec
chmod 770 /ven
chmod 777 /publico

echo "Finalizando script"
