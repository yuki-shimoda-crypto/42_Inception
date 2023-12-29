FROM debian:bookworm

RUN apt update

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


RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
  && chmod +x wp-cli.phar \
  && mv wp-cli.phar /usr/local/bin/wp

COPY start-wordpress.sh /start-wordpress.sh
RUN chmod +x /start-wordpress.sh

EXPOSE 9000
COPY www.conf /etc/php/8.2/fpm/pool.d/www.conf

CMD ["/start-wordpress.sh"]
