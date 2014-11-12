#!/bin/bash

# Apache
sudo zypper --non-interactive install apache2 apache2-mod_perl apache2-mod_php
# chkconfig --add httpd
# chkconfig httpd on
# systemctl stop apache2

# Apache main config
#rm -rf /var/www/html
#ln -s /vagrant /var/www/html

#service httpd start
#systemctl start apache2

# PHP
sudo zypper --non-interactive install  php5 php5-cli php5-common php5-devel php5-mysql php5-pear php5-mbstring

# Download Starter Content
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/Licas/vagranttest/master/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/Licas/vagranttest/master/files/info.php

# systemctl restart apache2
