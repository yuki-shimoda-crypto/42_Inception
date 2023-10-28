#!/bin/bash

nginx
service mariadb start
php-fpm8.2
tail -f /dev/null
