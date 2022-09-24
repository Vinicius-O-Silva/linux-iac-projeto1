#!/bin/bash

echo "Deletando usuários"

userdel -r -f naruto
userdel -r -f karin
userdel -r -f kushina
userdel -r -f itachi
userdel -r -f madara
userdel -r -f sasuke
userdel -r -f hinata
userdel -f -f neji
userdel -f -f hanabi

echo "Deletando grupos"

groupdel GRP_UZUMAKI
groupdel GRP_UCHIHA
groupdel GRP_HYUUGA

echo "Deletando diretírios e arquivos"

rm -rf /konoha-publico
rm -rf /uzumaki
rm -rf /uchiha
rm -rf /hyuuga

echo "Scrit para deletar executado com sucesso!"
