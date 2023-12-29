#!/bin/bash

# WordPressのインストール状況をチェック
if ! wp core is-installed --allow-root --path=/var/www/html; then
    # WordPressが未インストールの場合、インストールを実行
    wp core install --url=yshimoda.42.fr --title="WordPress Site" --admin_user=${WP_ADMIN_USER} --admin_password=${WP_ADMIN_PASSWORD} --admin_email=${WP_ADMIN_EMAIL} --path=/var/www/html --allow-root
    wp user create ${WP_USER} ${WP_EMAIL} --user_pass=${WP_PASSWORD} --role=editor --allow-root
    wp option update timezone_string 'Asia/Tokyo'
fi

# PHP-FPMを実行
php-fpm8.2 -F

