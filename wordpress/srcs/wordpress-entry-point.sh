if [ -z "$(ls -A /var/www/html/)" ]; then
	echo "/var/www/html is empty ... installing wordpress ..."
	wget https://wordpress.org/latest.zip
	mkdir -p /var/www/html
	echo "Unzip files ..."
	unzip -d /var/www/html/ latest.zip > /dev/null 
	mv /var/www/html/wordpress/* /var/www/html
	rm -rf /var/www/html/wordpress latest.zip
fi
echo "Starting PHP service ... "
php-fpm7.3 -F