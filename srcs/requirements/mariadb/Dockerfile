FROM debian:bookworm

RUN apt update

RUN apt install -y mariadb-server

ARG DB_NAME
ARG DB_USER
ARG DB_PASSWORD

COPY init-db.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/init-db.sh
RUN service mariadb start && /usr/local/bin/init-db.sh

COPY my.cnf /etc/mysql/my.cnf

EXPOSE 3306

CMD ["mysqld_safe"]
