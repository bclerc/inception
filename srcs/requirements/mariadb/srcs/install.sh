mkfifo /var/run/mysqld/mysqld.sock
echo "No database $WP_DATABASE_NAME found. Running ..."
mysql_install_db --user=mysql
echo "Secure installation ..."
mysqld_safe &
mysqladmin --silent --wait=10 ping
echo "Adding user $WP_DATABASE_USER"
mysql -u root -e "CREATE DATABASE $WP_DATABASE_NAME;"
mysql -u root -e "GRANT ALL PRIVILEGES ON $WP_DATABASE_NAME.* TO $WP_DATABASE_USER@'%' IDENTIFIED BY '$MARIADB_USER_PASSWORD';"
mysql -u root -e "FLUSH PRIVILEGES;"
mysqladmin -u root password $MARIADB_ROOT_PASSWORD
unset $(env | grep PASS | cut -d = -f 1)
echo "Restarting"
exit 0