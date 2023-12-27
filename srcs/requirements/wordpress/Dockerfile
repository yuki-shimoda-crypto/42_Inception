FROM debian:bookworm

RUN apt update

# remove
RUN apt install -y vim iputils-ping telnet

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

#RUN mkdir -p /var/www/html && cp -a wordpress/ /var/www/html/
#RUN rm -rf latest.tar.gz wordpress

#COPY update-wp-config.sh /tmp/update-wp-config.sh
#RUN /tmp/update-wp-config.sh
#
#COPY setup_database.sh /tmp/setup_database.sh
#RUN /tmp/setup_database.sh

EXPOSE 9000

CMD ["php-fpm8.2", "-F"]
