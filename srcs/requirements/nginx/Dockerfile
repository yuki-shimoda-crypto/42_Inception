FROM debian:bookworm

RUN apt update

# remove
RUN apt install -y vim iputils-ping telnet net-tools

RUN apt update && apt install -y nginx

# COPY nginx.conf /etc/nginx/nginx.conf
# COPY default /etc/nginx/sites-available/default

#ARG TZ
#
#RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

CMD ["nginx", "-g", "daemon off;"]
#CMD ["bash;"]
