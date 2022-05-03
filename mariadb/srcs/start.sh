if [ ! -d /var/lib/mysql/wordpress/ ]; then
	mysql_install_db --datadir=/var/lib/mysql
	/etc/init.d/mysql start
	mysql -u root -e "CREATE DATABASE wordpress;"
	mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'wp_user'@'%' IDENTIFIED BY '$MARIADB_USER_PASSWORD';"
	mysql -u root -e "FLUSH PRIVILEGES;"
	/etc/init.d/mysql stop
fi

mysqld