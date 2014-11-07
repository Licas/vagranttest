#!/bin/sh

#MySQL
yum install -y mysql mysql-server mysql-devel
chkconfig --add mysqld
chkconfig mysqld on

service mysqld start
mysql -u root -e "CREATE DATABASE IF NOT EXISTS dev_test";
mysql -u root -e "SHOW DATABASES";

