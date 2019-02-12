#!/bin/bash

mv /var/www/html /var/www/html.old
mv /var/www/wordpress /var/www/html
chown -Rf www-data:www-data /var/www/html

sed -i "s/\$domain/${domain}/g"  /etc/apache2/sites-enabled/000-default.conf
a2enconf block-xmlrpc

service apache2 restart
cp /etc/skel/.bashrc /root
