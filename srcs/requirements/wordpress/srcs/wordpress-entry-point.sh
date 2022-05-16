#!/bin/sh
if [ -z "$(ls /var/www/html/)" ]; then
	while ! ping -c1 db
        do 
			echo "\033[0;31mError:\033[0m Can't reachable Mysql server for installation, retrying in 5s." ;
			sleep 5;
		done
	echo "\033[0;31m Wordpress not found, running installation ...\033[0m"
	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
	chmod +x wp-cli.phar
	mv wp-cli.phar /usr/local/bin/wp
	mkdir -p /var/www/html/
	cd /var/www/html
	cp /wp-config.php .
	wp core download --allow-root --locale=fr_FR
	chown -R www-data:	/var/www/*
	chmod -R 755					/var/www/*
	echo "Configuring wordpress ..."
	while ! wp core --allow-root install --url=$HOST --title="ft_inception" --admin_user=$WP_USER_NAME --admin_password=$WP_USER_PASS --admin_email=$WP_USER_MAIL
	do 
		echo "\033[0;31mError:\033[0m Can't install wordpress server, retrying in 5s" ;
		sleep 5;
	done
	echo "Installing Redis wordpress plugin ..."
	wp plugin install --url redis-cache --activate --allow-root
	wp redis enable --force --allow-root
fi
echo "Starting PHP service ... "
php-fpm7.3 -F
