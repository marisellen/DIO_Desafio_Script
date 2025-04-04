#!/bin/bash

mkdir /publico 
mkdir /adm 
mkdir /ven 
mkdir /sec 

groupadd GRP_ADM 
groupadd GRP_VEN 
groupadd GRP_SEC 

adduser Carlos -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_ADM 
adduser Maria -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_ADM
adduser Joao -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_ADM

adduser Debora -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_VEN
adduser Sebastiana -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_VEN
adduser Roberta -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_VEN
 
adduser Josefina -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_SEC
adduser Amanda -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_SEC
adduser Rogerio -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_SEC

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
