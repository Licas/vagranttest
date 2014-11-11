#!/bin/bash

# Apache
zypper --non-interactive install httpd httpd-devel httpd-tools
chkconfig --add httpd
chkconfig httpd on
service httpd stop

# Apache main config
rm -rf /var/www/html
ln -s /vagrant /var/www/html

service httpd start

# PHP
zypper --non-interactive  php php-cli php-common php-devel php-mysql

# Download Starter Content
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/Licas/vagranttest/master/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/Licas/vagranttest/master/files/info.php

service httpd restart
