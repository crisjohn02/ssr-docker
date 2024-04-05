#!/bin/bash

# Set storage permission to writable
chmod -R o+w /var/www/act.test/storage /var/www/act.test/bootstrap/cache

# Install composer dependencies
if [ ! -d /var/www/act.test/vendor ]; then
    composer update
fi
    

# Start php-fpm
php-fpm --nodaemonize