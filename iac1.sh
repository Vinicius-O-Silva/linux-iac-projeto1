#!/bin/bash

echo "Parte 1 - Criando diretórios!"

mkdir /konoha-publico
mkdir /uzumaki
mkdir /uchiha
mkdir /hyuuga

echo "Parte 2 - Criando Grupos de usuários"

groupadd GRP_UZUMAKI
groupadd GRP_UCHIHA
groupadd GRP_HYUUGA

echo "Parte 3 - Usuários"

useradd naruto -m -s /bin/bash -p $(openssl passwd "senha") -G GRP_UZUMAKI
useradd karin -m -s /bin/bash -p $(openssl passwd "senha") -G GRP_UZUMAKI
useradd kushina -m -s /bin/bash -p $(openssl passwd "senha") -G GRP_UZUMAKI

useradd itachi -m -s /bin/bash -p $(openssl passwd "senha") -G GRP_UCHIHA
useradd madara -m -s /bin/bash -p $(openssl passwd "senha") -G GRP_UCHIHA
useradd sasuke -m -s /bin/bash -p $(openssl passwd "senha") -G GRP_UCHIHA

useradd hinata -m -s /bin/bash -p $(openssl passwd "senha") -G GRP_HYUUGA
useradd neji -m -s /bin/bash -p $(openssl passwd "senha") -G GRP_HYUUGA
useradd hanabi -m -s /bin/bash -p $(openssl passwd "senha") -G GRP_HYUUGA

echo "Parte 4 - Especificando permissões dos diretórios"

chown root:GRP_UZUMAKI /uzumaki
chown root:GRP_UCHIHA /uchiha
chown root:GRP_HYUUGA /hyuuga

chmod 770 /uzumaki
chmod 770 /uchiha
chmod 770 /hyuuga
chmod 777 /konoha-publico

echo "Script executado com sucesso!"
