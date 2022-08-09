#!/bin/bash

echo "Criando diretórios..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os grupos de usuários..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários e adicionando usuários aos seus respectivos grupos..."
useradd carlos  -c "Carlos Silva"  -s /bin/bash -m  -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd maria  -c "Maria Silva"  -s /bin/bash -m  -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd joao  -c "Joao Silva"  -s /bin/bash -m  -p $(openssl passwd -crypt senha123) -G GRP_ADM

useradd debora  -c "Debora Silva"  -s /bin/bash -m  -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd sebastiana  -c "Sebastiana Silva"  -s /bin/bash -m  -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd roberto  -c "Roberto da Silva"  -s /bin/bash -m  -p $(openssl passwd -crypt senha123) -G GRP_VEN

useradd josefina  -c "Josefina Silva"  -s /bin/bash -m  -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd amanda  -c "Amanda Silva"  -s /bin/bash -m  -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd carlos  -c "Carlos Silva"  -s /bin/bash -m  -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd rogerio  -c "Rogerio da Silva"  -s /bin/bash -m  -p $(openssl passwd -crypt senha123) -G GRP_SEC

echo "Atribuindo as permissões dos diretórios..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Script executado com sucesso."



