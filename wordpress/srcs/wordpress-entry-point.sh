mkdir -p /run/php/
if [ -z "$(ls /var/www/html/)" ]; then
	echo "/var/www/html is empty ... installing wordpress ..."
	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
	chmod +x wp-cli.phar
	mv wp-cli.phar /usr/local/bin/wp
	mkdir -p /var/www/html/
	chown -R www-data:www-data		/var/www/*
	chmod -R 755					/var/www/*
	cd /var/www/html
	mv /wp-config.php .
	wp core download --allow-root --locale=fr_FR
	wp core --allow-root install --url=localhost --title="ft_inception" --admin_user=bclerc --admin_password=bclerc --admin_email=bclerc@student.42.fr
	mv /var/www/object-cache.php /var/www/html/wp-content/
	wp plugin install redis-cache --activate --allow-root
	wp redis enable --force --allow-root
fi
echo "Starting PHP service ... "
php-fpm7.3 -F