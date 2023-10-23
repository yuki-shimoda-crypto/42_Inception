FROM debian:bookworm

RUN apt update

# nginx
RUN apt install -y nginx
RUN service start nginx

# mariadb
RUN apt install -y mariadb-server
RUN service mariadb start
RUN mariadb -u root -p

# wordpress
#RUN apt install php-fpm php-mysql php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip -y
RUN 	apt install -y		\
			php				\
			php-curl		\
			php-igbinary	\
			php-imagick		\
			php-intl		\
			php-mbstring	\
			php-xml			\
			php-zip			\
			php-fpm	

RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xzvf latest.tar.gz
RUN cp wordpress/wp-config-sample.php wordpress/wp-config.php
RUN cp -a wordpress/ /var/www/html/
