#!/bin/bash

# Set storage permission to writable
chmod -R o+w /var/www/jellybean.test/storage /var/www/jellybean.test/bootstrap/cache

# Install composer dependencies
if [ ! -d /var/www/jellybean.test/vendor ]; then
    composer update
fi

# Install NPM dependencies
# if [ ! -d /var/www/jellibean.test/node_modules ]; then
#     npm install
# fi
    

# Start php-fpm
php-fpm --nodaemonize