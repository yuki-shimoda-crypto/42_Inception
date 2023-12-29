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
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
  && chmod +x wp-cli.phar \
  && mv wp-cli.phar /usr/local/bin/wp

#RUN wp core install --url=yshimoda.42.fr --title="WordPress Site" --admin_user=admin --admin_password=password --admin_email=admin@example.com --path=/var/www/html --allow-root
#RUN wp core install --url=yshimoda.42.fr --title="WordPress Site" --admin_user=$DB_USER --admin_password=$DB_PASSWORD --admin_email=admin@example.com --path=/var/www/html --allow-root
#RUN wp core install --url=yshimoda.42.fr --title="WordPress Site" --admin_user=admin --admin_password=password --admin_email=admin@example.com --path=/var/www/html --allow-root

COPY start-wordpress.sh /start-wordpress.sh
RUN chmod +x /start-wordpress.sh

#ARG TZ
#
#RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

EXPOSE 9000
COPY www.conf /etc/php/8.2/fpm/pool.d/www.conf

CMD ["/start-wordpress.sh"]
#CMD ["php-fpm8.2", "-F"]
