# ビルドと起動
up:
	sudo docker compose -f srcs/docker-compose.yml up --build -d

# 停止とコンテナの削除
down:
	sudo docker compose -f srcs/docker-compose.yml down

# ボリュームを含めて全て削除
clean:
	sudo docker compose -f srcs/docker-compose.yml down --volumes

# コンテナのログを表示
logs:
	sudo docker compose -f srcs/docker-compose.yml logs

ps:
	sudo docker compose -f srcs/docker-compose.yml ps

nginx:
	sudo docker exec -it nginx bash

wordpress:
	sudo docker exec -it wordpress bash

mariadb:
	sudo docker exec -it mariadb bash

reboot_nginx:
	sudo docker exec -it nginx "/usr/sbin/nginx -s reload"

.PHONY: up down clean logs nginx wordpress mariadb
