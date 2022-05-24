touch /var/run/mysqld/mysqld.pid
if [ ! -d /var/lib/mysql/$WP_DATABASE_NAME/ ]; then
	bash /install.sh
else
	unset $(env | grep PASS | cut -d = -f 1)
	mysqld_safe --verbose --user=mysql
fi