# lamp

#Wordpress and LAMP

For phpmyadmin command in get new user and have this user same privilege as administrator mysql -u root -p mysql CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin'; GRANT ALL PRIVILEGES ON * . * TO 'admin'@'localhost'; flush privileges; exit

you just need run bash lamp.sh for wordpress you just need configure the DNS or bind in /etc/bind9 and you just need to configure the ServerName in these wordpress.conf dont forget about resolv.conf too guys
