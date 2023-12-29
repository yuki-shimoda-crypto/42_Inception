# ビルドと起動
up:
	mkdir -p /home/yshimoda/data/wordpress_files
	mkdir -p /home/yshimoda/data/db-data
	docker compose -f srcs/docker-compose.yml up --build -d

# 停止とコンテナの削除
down:
	docker compose -f srcs/docker-compose.yml down

# ボリュームを含めて全て削除
clean:
	docker compose -f srcs/docker-compose.yml down --volumes
	sudo rm -rf /home/yshimoda/data

# コンテナのログを表示
logs:
	docker compose -f srcs/docker-compose.yml logs

ps:
	docker compose -f srcs/docker-compose.yml ps

nginx:
	docker exec -it nginx bash

wordpress:
	docker exec -it wordpress bash

mariadb:
	docker exec -it mariadb bash

reboot_nginx:
	docker exec -it nginx "/usr/sbin/nginx -s reload"

.PHONY: up down clean logs ps nginx wordpress mariadb reboot_nginx
