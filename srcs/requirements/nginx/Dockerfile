FROM debian:bookworm

RUN apt update

# remove
RUN apt install -y vim iputils-ping telnet

RUN apt update && apt install -y nginx

# COPY nginx.conf /etc/nginx/nginx.conf
# COPY default /etc/nginx/sites-available/default

CMD ["nginx", "-g", "daemon off;"]
#CMD ["bash;"]
