if [ ! -d /var/lib/mysql/$WP_DATABASE_NAME/ ]; then
	echo "No database $WP_DATABASE_NAME found. Running ..."
	mysql_install_db --datadir=/var/lib/mysql
	/etc/init.d/mysql start
	mysql -u root -e "CREATE DATABASE $WP_DATABASE_NAME;"
	mysql -u root -e "GRANT ALL PRIVILEGES ON $WP_DATABASE_NAME.* TO $WP_DATABASE_USER'%' IDENTIFIED BY '$MARIADB_USER_PASSWORD';"
	mysql -u root -e "FLUSH PRIVILEGES;"
	/etc/init.d/mysql stop
fi
echo "Starting mariadb service ..."
mysqld