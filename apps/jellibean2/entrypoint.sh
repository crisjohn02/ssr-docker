#!/bin/bash

# Set storage permission to writable
chmod -R o+w /var/www/jellibean.test/storage /var/www/jellibean.test/bootstrap/cache

# Install composer dependencies
if [ ! -d /var/www/jellibean.test/vendor ]; then
    composer update
fi

# Install NPM dependencies
# if [ ! -d /var/www/jellibean.test/node_modules ]; then
#     npm install
# fi
    

# Start php-fpm
php-fpm --nodaemonize