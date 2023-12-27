FROM debian:bookworm

RUN apt update

# remove
RUN apt install -y vim iputils-ping telnet

RUN apt install -y mariadb-server

EXPOSE 3306

CMD ["mysqld_safe"]
