#!/bin/bash

# Set storage permission to writable
chmod -R o+w /var/www/impress.test/storage /var/www/impress.test/bootstrap/cache

# Install composer dependencies
if [ ! -d /var/www/impress.test/vendor ]; then
    composer update
fi
    

# Start php-fpm
php-fpm --nodaemonize