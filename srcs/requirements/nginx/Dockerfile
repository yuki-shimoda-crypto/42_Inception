FROM debian:bookworm

RUN apt update && apt install -y iputils-ping telnet

RUN apt update && apt install -y nginx

# remove
RUN apt install -y vim

# COPY nginx.conf /etc/nginx/nginx.conf
# COPY default /etc/nginx/sites-available/default

#
#EXPOSE 80
#EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
#CMD ["bash;"]
