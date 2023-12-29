FROM debian:bookworm

RUN apt update

# remove
RUN apt install -y vim iputils-ping telnet net-tools

RUN apt install -y mariadb-server

ARG DB_NAME
ARG DB_USER
ARG DB_PASSWORD

COPY init-db.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/init-db.sh
RUN service mariadb start && /usr/local/bin/init-db.sh

# ARG TZ
# 
# RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

EXPOSE 3306

#ENTRYPOINT ["/usr/local/bin/init-db.sh && mysqld_safe"]
#ENTRYPOINT ["/bin/sh", "-c", "/usr/local/bin/init-db.sh && mysqld_safe"]


CMD ["mysqld_safe"]
