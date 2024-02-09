#!/bin/sh

# Set storage permission to writable
chmod -R o+w /var/www/fluent.test/storage /var/www/fluent.test/bootstrap/cache

# Start php-fpm
php-fpm --nodaemonize