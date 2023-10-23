FROM debian:bookworm
RUN apt update

# nginx
RUN apt install nginx -y
RUN service start nginx

RUN apt install mariadb-server mariadb-client -y
RUN service mariadb start
RUN mariadb -u root -p



# wordpress
RUN apt install php-fpm php-mysql php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip -y
RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xzvf latest.tar.gz
RUN cp wordpress/wp-config-sample.php wordpress/wp-config.php
RUN cp -a wordpress/ /var/www/html/


#RUN mysql_secure_installation
#RUN mysql -u root -p
