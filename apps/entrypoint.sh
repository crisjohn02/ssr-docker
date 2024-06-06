#!/bin/bash

# Set storage permission to writable
chmod -R o+w /var/www/rel.test/storage /var/www/rel.test/bootstrap/cache
chmod -R o+w /var/www/act.test/storage /var/www/act.test/bootstrap/cache
chmod -R o+w /var/www/express.test/storage /var/www/express.test/bootstrap/cache
chmod -R o+w /var/www/fluent.test/storage /var/www/fluent.test/bootstrap/cache
chmod -R o+w /var/www/fast.test/storage /var/www/fast.test/bootstrap/cache

# Install composer dependencies for rel
if [ ! -d /var/www/rel.test/vendor ]; then
    composer update
fi

# Install composer dependencies for act
if [ ! -d /var/www/act.test/vendor ]; then
    composer update
fi

# Install composer dependencies for express
if [ ! -d /var/www/express.test/vendor ]; then
    composer update
fi

# Install composer dependencies for fluent
if [ ! -d /var/www/fluent.test/vendor ]; then
    composer update
fi

# Install composer dependencies for fast
if [ ! -d /var/www/fast.test/vendor ]; then
    composer update
fi

# Start php-fpm
php-fpm --nodaemonize