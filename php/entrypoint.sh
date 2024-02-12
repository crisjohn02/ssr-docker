#!/bin/sh

# Set storage permission to writable
chmod -R o+w /var/www/fluent.test/storage /var/www/fluent.test/bootstrap/cache
chmod -R o+w /var/www/express.test/storage /var/www/express.test/bootstrap/cache

# Start php-fpm
php-fpm --nodaemonize