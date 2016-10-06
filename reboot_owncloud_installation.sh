#!/bin/bash

if [ $# -ne 1 ];
then
   echo "Introduce the installation path as parameter"
   exit
fi

installation_path=$1

sudo rm -rf $installation_path/data/*
sudo rm -rf $installation_path/config/*

mysql -u root -h localhost -e "drop database owncloud"
mysql -u root -h localhost -e "drop user oc_admin"
mysql -u root -h localhost -e "drop user oc_admin@localhost"

sudo -u www-data $installation_path/occ maintenance:install --database='mysql' --database-name='owncloud' --database-user='root' --database-pass='' --admin-user='admin' --admin-pass='admin'