#!/bin/bash

# Set storage permission to writable
chmod -R o+w /var/www/rel.test/storage /var/www/rel.test/bootstrap/cache

# Install composer dependencies
if [ ! -d /var/www/rel.test/vendor ]; then
    composer update
fi

# Start php-fpm
php-fpm --nodaemonize