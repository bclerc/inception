if ! id -u "$FTP_USER_NAME" >/dev/null 2>&1; then
	echo "VSFTP have no configuration, running ..."
	useradd $FTP_USER_NAME -d /home/$FTP_USER_NAME
	echo "$FTP_USER_NAME:$FTP_USER_PASS" | chpasswd 
	echo "$FTP_USER_NAME" >> /etc/vsftpd.user_list
	mkdir -p /home/$FTP_USER_NAME
	mkdir -p /var/run/vsftpd/empty
	usermod -aG wordpress $FTP_USER_NAME
	chown -R $FTP_USER_NAME:wordpress /home/$FTP_USER_NAME/
	chmod -R 755 /home/$FTP_USER_NAME/
	newgrp wordpress
	unset $FTP_USER_NAME $FTP_USER_PASS
fi
echo "Starting vsftpd service ... "
vsftpd
