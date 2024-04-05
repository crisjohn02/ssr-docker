#!/bin/bash

# Set storage permission to writable
chmod -R o+w /var/www/express.test/storage /var/www/express.test/bootstrap/cache

# Install composer dependencies
if [ ! -d /var/www/express.test/vendor ]; then
    composer update
fi
    

# Start php-fpm
php-fpm --nodaemonize