#!/bin/bash
case "`lsb_release -is`" in
     CentOS)
	 yum install -y php 
	 yum search -y php 
	 yum install -y php-mysql php-gd php-imap php-ldap php-mbstring php-odbc php-pear php-xml php-xmlrpc 
	 yum install -y php-pecl-apc
	 /etc/init.d/httpd restart 
	 echo "Done."
	 clear
	 wget -q -O - http://www.atomicorp.com/installers/atomic |sh 
	 yum install php-ioncube-loader
	 /etc/init.d/httpd restart
	 echo "Done."
	 clear
	 yum install -y gcc php-devel php-pear libssh2 libssh2-devel make
	 pecl install -f ssh2
	 echo extension=ssh2.so > /etc/php.d/ssh2.ini
	 /etc/init.d/httpd restart
	 echo "Done."
	 clear
	 cd /var/www/html
	 wget https://raw.githubusercontent.com/ch0sys/SwiftPanel/master/SwiftPanel.zip
	 unzip SwiftPanel.zip
	 rm -rf Swiftpanel.zip
	 rm -rf configuration-dist.php
	 wget https://raw.githubusercontent.com/ch0sys/SwiftPanel/master/configuration.php
	 echo "Done."
	 clear
	 yum remove mysql
	 rm -rf /var/lib/mysql
	 yum install mysql-server
	 /sbin/chkconfig --levels 235 mysqld on
	 service mysqld start
	 mysql_secure_installation
	 echo "Go youdomain.com/install"
	 echo "Write mysql -u root -p for install Database!"
	 echo "ch0"
	 echo "Done. Bye!"
	 rm -rf install.sh
	     ;;
esac	 
	 
