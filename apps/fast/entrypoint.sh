#!/bin/bash

# Set storage permission to writable
chmod -R o+w /var/www/fast.test/storage /var/www/fast.test/bootstrap/cache

# Install composer dependencies
if [ ! -d /var/www/fast.test/vendor ]; then
    composer update
fi
    

# Start php-fpm
php-fpm --nodaemonize