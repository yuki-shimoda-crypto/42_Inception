FROM debian:bookworm

RUN apt update

# remove
RUN apt install -y vim iputils-ping telnet net-tools

RUN apt update && apt install -y nginx openssl

COPY nginx.conf /etc/nginx/nginx.conf
COPY default /etc/nginx/sites-available/default

RUN openssl req -x509 -nodes -days 365 -newkey rsa:4096 \
    -keyout /etc/ssl/private/nginx-selfsigned.key \
    -out /etc/ssl/certs/nginx-selfsigned.crt \
    -subj "/C=/ST=/L=/O=/OU=/CN="


CMD ["nginx", "-g", "daemon off;"]
