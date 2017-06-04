# SwiftPanel
         
         
         Install SwiftPanel on Centos
         wget https://raw.githubusercontent.com/ch0sys/SwiftPanel/master/install.sh
         chmod +x *
         ./install.sh
         
         Open DataBase
         mysql -u root -p  (Write you password)
         CREATE DATABASE swiftpanel;
         CREATE USER 'swiftpanel'@localhost IDENTIFIED BY 'gpanel1';
         GRANT ALL PRIVILEGES ON swiftpanel.* TO 'swiftpanel'@localhost;
         use swiftpanel;
         exit
         
         Info DataBase
         hostname - localhost
         username - swiftpanel
         name - swiftpanel
         password - gpanel1
         
         
        Add info to configuration.php
        And go youdomain.com/install
        And you finish install go /var/www/html and remove folder " install "
        Thanks you
        
Problem? : contact@ch0.io
         
        
         
         
         
        
