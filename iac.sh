#!/bin/bash

#----------------------------
#Autor: Marco Aurélio Andrade
#Data : 06/08/2022
#----------------------------

echo ""
echo "Criando os diretórios: /adm, /publico, /sec e /ven. Aguarde... "
echo ""

mkdir /adm
mkdir /publico
mkdir /sec
mkdir /ven

echo ""
echo "Feito!"
echo ""

echo "Criando os grupos: GRP_ADM, GRP_VEN e GRP_SEC. Aguarde... "
echo ""

groupadd GRP_ADM
groupadd GRP_VEN
grpouadd GRP_SEC

echo ""
echo "Feito!"
echo ""

# Os usuários criados serão:
# "carlos", "maria" e "joao" que irão pertencer ao grupo "GRP_ADM"
# "debora", "sebastiana" e "roberto" que irão pertencer ao grupo "GRP_VEN"
# "josefina", "amanda" e "rogerio" que irão pertencer ao grupo "GRP_SEC"
#Obs.: Será definida uma SENHA única para todos "Senha2022", que deverá ser atualizada no próximo 'logon'.

#Cria usuário(s) e o(s) atribui ao grupo "GRP_ADM". Solicita a alteração de senha no próximo 'logon'.

echo "Criando usuarios pertencentes ao grupo GRP_ADM. Aguarde... "
echo ""

useradd carlos -c "carlos de tal" -m -s /bin/ssh -p $(openssl passwd -crypt Senha2022) -G GRP_ADM
passwd carlos -e
useradd maria -c "Maria de tal" -m -s /bin/ssh -p $(openssl passwd -crypt Senha2022) -G GRP_ADM
passwd maria -e
useradd joao -c "João de tal" -m -s /bin/ssh -p $(openssl passwd -crypt Senha2022) -G GRP_ADM
passwd joao -e

echo ""

#Cria usuário(s) e o(s) atribui ao grupo "GRP_VEN". Solicita a alteração de senha no próximo 'logon'.

echo "Criando usuarios pertencentes ao grupo GRP_VEN. Aguarde... "
echo ""

useradd debora -c "Débora de tal" -m -s /bin/ssh -p $(openssl passwd -crypt Senha2022) -G GRP_VEN
passwd debora -e
useradd sebastiana -c "Sebastiana de tal" -m -s /bin/ssh -p $(openssl passwd -crypt Senha2022) -G GRP_VEN
passwd sebastiana -e
useradd roberto -c "Roberto de tal" -m -s /bin/ssh -p $(openssl passwd -crypt Senha2022) -G GRP_VEN
passwd roberto -e

echo ""

#Cria usuário(s) e o(s) atribui ao grupo "GRP_SEC". Solicita a alteração de senha no próximo 'logon'.

echo "Criando usuarios pertencentes ao grupo GRP_SEC. Aguarde... "
echo ""

useradd josefina -c "Josefina de tal" -m -s /bin/ssh -p $(openssl passwd -crypt Senha2022) -G GRP_SEC
passwd josefina -e
useradd amanda -c "Amanda de tal" -m -s /bin/ssh -p $(openssl passwd -crypt Senha2022) -G GRP_SEC
passwd amanda -e
useradd rogerio -c "Rogério de tal" -m -s /bin/ssh -p $(openssl passwd -crypt Senha2022) -G GRP_SEC
passwd rogerio -e

echo ""

#O DONO dos diretórios deverá ser o "root"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

#Alterando as permissões do diretório "/publico" (Todos terão permissão TOTAL)

chmod 777 /publico

#Alterando as permissões dos grupos para que SOMENTE os usuários MEMBROS tenham permissão TOTAL.
#Usuários de outros grupos NÃO terão NENHUM tipo de permissão.

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo ""
echo "------------------------------------- PROCESSO FINALIZADO! ---------------------------------------------"
echo ""


