#!/bin/bash

# Apache
zypper install -y apache2 apache2-mod_perl apache2-mod_php5 php5 php5-mbstring php5-pear
ln -s /usr/bin/perl /usr/local/bin/perl

# chkconfig --add httpd
# chkconfig httpd on
 systemctl enable apache2
 systemctl stop apache2

# Apache main config
#rm -rf /var/www/html
#ln -s /vagrant /var/www/html

#service httpd start
 systemctl start apache2


# Download Starter Content
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/Licas/vagranttest/master/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/Licas/vagranttest/master/files/info.php

 systemctl restart apache2
