FROM debian:bookworm

RUN apt update

# remove
RUN apt install -y vim iputils-ping telnet net-tools

# mariadb
#RUN apt install -y mariadb-server
#RUN mariadb -u root -p

# Install necessary packages
RUN apt install -y  \
    php-json    \
    php-mysql    \
    php-curl    \
    php-igbinary  \
    php-imagick    \
    php-intl    \
    php-mbstring  \
    php-xml      \
    php-zip      \
    php-fpm      \
    wget \
    mariadb-server

# Download and setup WordPress
WORKDIR /var/www/html
RUN wget https://wordpress.org/latest.tar.gz \
  && tar -xzvf latest.tar.gz \
  && cp wordpress/wp-config-sample.php wordpress/wp-config.php \
  && mv wordpress/*  . \
  && rm -rf latest.tar.gz wordpress

ARG DB_NAME
ARG DB_USER
ARG DB_PASSWORD
ARG DB_HOST

RUN sed -i "s/database_name_here/$DB_NAME/g" /var/www/html/wp-config.php \
  && sed -i "s/username_here/$DB_USER/g" /var/www/html/wp-config.php \
  && sed -i "s/password_here/$DB_PASSWORD/g" /var/www/html/wp-config.php \
  && sed -i "s/localhost/$DB_HOST/g" /var/www/html/wp-config.php


#RUN mkdir -p /var/www/html && cp -a wordpress/ /var/www/html/
#RUN rm -rf latest.tar.gz wordpress

#COPY update-wp-config.sh /tmp/update-wp-config.sh
#RUN /tmp/update-wp-config.sh
#
#COPY setup_database.sh /tmp/setup_database.sh
#RUN /tmp/setup_database.sh

EXPOSE 9000

CMD ["php-fpm8.2", "-F"]
