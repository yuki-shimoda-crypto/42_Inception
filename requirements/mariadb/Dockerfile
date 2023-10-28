# Dockerfile-DariaDB
FROM debian:bookworm

EXPOSE 3306

ARG DB_NAME=${DB_NAME}
ARG DB_USER=${DB_USER}
ARG DB_PASSWORD=${DB_PASSWORD}
ARG DB_ROOT_PASSWORD=${DB_ROOT_PASSWORD}

# Install MariaDB
RUN apt update && apt install -y mariadb-server

COPY setup_database.sh /tmp/setup_database.sh
RUN bash /tmp/setup_database.sh

CMD ["mysqld_safe"]
