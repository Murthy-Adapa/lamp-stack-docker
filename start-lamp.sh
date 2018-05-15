#!/bin/bash

/bin/sed -i 's/AllowOverride\ None/AllowOverride\ All/g' /etc/apache2/apache2.conf

# enable php short tags:
/bin/sed -i "s/short_open_tag\ \=\ Off/short_open_tag\ \=\ On/g" /etc/php/7.0/apache2/php.ini

# Run Mysql
service mysql restart

# Run Apache 
/usr/sbin/apachectl -DFOREGROUND -k start -e debug

