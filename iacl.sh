#!/bin/bash

echo "Executando comandos..."

echo "Criando diretórios...."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios Criados!"

echo "Criando grupos...."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos Criados!"

echo "Criando usuários...."

useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM 
useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM
useradd joao -c "Joao" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM

useradd debora -c "Debora" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN
useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN

useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC
useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC
useradd rogerio -c "Rogerio" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC


echo "Usuários Criados!"

echo "Direcinando grupos para seus diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Direcionamento Finalizado!"

echo "Modificando as permissões dos diretórios"

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Modificações Concluídas!"

echo "Comandos executados com Sucesso!"
