mkdir -p /run/php/
if [ -z "$(ls /var/www/html/wp-content/)" ]; then
	echo "\033[0;31m Wordpress not found, running installation ...\033[0m"
	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
	chmod +x wp-cli.phar
	mv wp-cli.phar /usr/local/bin/wp
	mkdir -p /var/www/html/
	chown -R www-data:www-data		/var/www/*
	chmod -R 755					/var/www/*
	cd /var/www/html
	cp /wp-config.php .
	wp core download --allow-root --locale=fr_FR
	echo "Configuring wordpress ..."
	wp core --allow-root install --url=$HOST --title="ft_inception" --admin_user=$WP_USER_NAME --admin_password=$WP_USER_PASS --admin_email=$WP_USER_MAIL || (rm -rf /var/www/* && exit 1) 
	echo "Installing Redis wordpress plugin ..."
	wp plugin install --url redis-cache --activate --allow-root
	wp redis enable --force --allow-root
else
	echo "Starting PHP service ... "
	php-fpm7.3 -F
fi