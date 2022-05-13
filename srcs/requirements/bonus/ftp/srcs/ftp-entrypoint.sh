if ! id -u "wp_user" >/dev/null 2>&1; then
	echo "VSFTP have no configuration, running ..."
	useradd wp_user -d /home/wp_user
	echo "wp_user:$FTP_USER_PASSWORD" | chpasswd 
	echo "wp_user" >> /etc/vsftpd.user_list
	mkdir -p /home/wp_user
	mkdir -p /var/run/vsftpd/empty
	chown -R wp_user: /home/wp_user/
	chmod -R 755 /home/wp_user/
fi
echo "Starting vsftpd service ... "
vsftpd
