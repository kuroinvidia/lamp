#!/bin/bash
apt install apache2 php7.0 php7.0-mysql mysql-server bind9 ssh -y
echo -e " \n Y \n admin \n admin \n Y \n Y \n Y \n Y" | mysql_secure_installation #Skills39 adalah password database untuk root user, ganti aja
systemctl restart apache2
apt install phpmyadmin -y
echo -e " \s \n \n admin \n admin \n"
cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/phpmyadmin.conf
sed -i 's+/var/www/html+/usr/share/phpmyadmin+g' /etc/apache2/sites-available/phpmyadmin.conf
a2ensite phpmyadmin.conf
systemctl restart apache2
cd /var/www/html
wget https://wordpress.org/latest.tar.gz
tar -zxvf latest.tar.gz
cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/wordpress.conf
sed -i 's+/var/www/html+/var/www/html/wordpress+g' /etc/apache2/sites-available/wordpress.conf
a2ensite wordpress.conf
systemctl restart apache2

mysql -u root -p mysql
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON * . * TO 'admin'@'localhost';
flush privileges;
exit
