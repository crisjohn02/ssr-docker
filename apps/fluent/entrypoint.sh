#!/bin/bash

# Set storage permission to writable
chmod -R o+w /var/www/fluent.test/storage /var/www/fluent.test/bootstrap/cache

# Install composer dependencies
if [ ! -d /var/www/fluent.test/vendor ]; then
    composer update
fi

# Install NPM dependencies
# if [ ! -d /var/www/fluent.test/node_modules ]; then
#     npm install
# fi
    

# Start php-fpm
php-fpm --nodaemonize