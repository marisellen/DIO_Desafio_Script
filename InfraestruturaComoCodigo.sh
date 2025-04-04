#!/bin/bash

sudo mkdir /publico 
sudo mkdir /adm 
sudo mkdir /ven 
sudo mkdir /sec 

sudo groupadd GRP_ADM 
sudo groupadd GRP_VEN 
sudo groupadd GRP_SEC 

sudo adduser Carlos -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_ADM 
sudo adduser Maria -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_ADM
sudo adduser Joao -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_ADM

sudo adduser Debora -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_VEN
sudo adduser Sebastiana -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_VEN
sudo adduser Roberta -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_VEN
 
sudo adduser Josefina -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_SEC
sudo adduser Amanda -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_SEC
sudo adduser Rogerio -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_SEC

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
