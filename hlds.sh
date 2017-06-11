#!/bin/bash
	 mkdir -p /home/gamefiles/cs	
	 cd /home/gamefiles/cs
   wget hahha.esy.es/public.zip
   unzip public.zip
   rm -rf public.zip
   chmod +x hlds_run
   cd cstrike
   rm -rf server.cfg
   wget https://raw.githubusercontent.com/ch0sys/SwiftPanel/master/server.cfg
   rm -rf dproto.cfg
   wget https://raw.githubusercontent.com/ch0sys/SwiftPanel/master/dproto.cfg
   cd /home/gamefiles/cs/cstrike/addons/amxmodx/configs
   rm -rf botnames.txt
   wget https://raw.githubusercontent.com/ch0sys/SwiftPanel/master/botnames.txt
   clear
   yum install sudo
   sudo rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
   sudo yum -y install proftpd
   service proftpd restart
   	 echo "ch0"
	 echo "Done. Bye!"
