#!/bin/bash

# update-wp-config.sh

# Update DB_NAME
sed -i "s/'DB_NAME', 'database_name_here'/'DB_NAME', '${DB_NAME}'/g" /var/www/html/wordpress/wp-config.php

# Update DB_USER
sed -i "s/'DB_USER', 'username_here'/'DB_USER', '${DB_USER}'/g" /var/www/html/wordpress/wp-config.php

# Update DB_PASSWORD
sed -i "s/'DB_PASSWORD', 'password_here'/'DB_PASSWORD', '${DB_PASSWORD}'/g" /var/www/html/wordpress/wp-config.php

# Update DB_HOST
sed -i "s/'DB_HOST', 'localhost'/'DB_HOST', '${DB_HOST}'/g" /var/www/html/wordpress/wp-config.php

