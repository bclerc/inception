echo "No database $WP_DATABASE_NAME found. Running ..."
mysql_install_db --user=mysql > log.tmp && rm log.tmp
echo "Secure installation ..."
mysqld_safe &
mysqladmin --silent --wait=10 ping
echo "Secure installation"
mysql -u root -e "DELETE FROM mysql.user WHERE User='';"
mysql -u root -e "DROP USER ''@'$(hostname)'"
mysql -u root -e "DROP USER ''@'localhost'"
mysql -u root -e "DROP DATABASE IF EXISTS test;"
mysql -u root -e "DELETE FROM mysql.db WHERE Db='test' OR Db='test\\_%'"
echo "Adding user $WP_DATABASE_USER"
mysql -u root -e "CREATE DATABASE $WP_DATABASE_NAME;"
mysql -u root -e "GRANT ALL PRIVILEGES ON $WP_DATABASE_NAME.* TO $WP_DATABASE_USER@'%' IDENTIFIED BY '$MARIADB_USER_PASS';"
mysql -u root -e "FLUSH PRIVILEGES;"
mysqladmin -u root password $MARIADB_ROOT_PASS
unset $(env | grep PASS | cut -d = -f 1)
echo "Restarting"
exit 0