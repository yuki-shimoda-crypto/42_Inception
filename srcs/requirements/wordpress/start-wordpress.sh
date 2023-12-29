#!/bin/bash

# WordPressのインストール状況をチェック
if ! wp core is-installed --allow-root --path=/var/www/html; then
    # WordPressが未インストールの場合、インストールを実行
    wp core install --url=yshimoda.42.fr --title="WordPress Site" --admin_user=satoshi --admin_password=password --admin_email=admin@example.com --path=/var/www/html --allow-root
    wp user create yshimoda yshimoda@example.com --user_pass=password --role=editor --allow-root
    wp option update timezone_string 'Asia/Tokyo'
fi

# PHP-FPMを実行
php-fpm8.2 -F

