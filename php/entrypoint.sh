#!/bin/sh

Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
echo ""
echo "***********************************************************"
echo "   Starting PHP-FPM instances                    "
echo "***********************************************************"

set -e

# Check composer dependencies
if [ ! -d /var/www/fluent.test/vendor ]; then
    cd /var/www/fluent.test && composer update
fi
if [ ! -d /var/www/express.test/vendor ]; then
    cd /var/www/express.test && composer update
fi

if [ ! -d /var/www/act.test/vendor ]; then
    cd /var/www/act.test && composer update
fi

if [ ! -d /var/www/impress.test/vendor ]; then
    cd /var/www/impress.test && composer update
fi

if [ ! -e /var/www/impress.test/storage/oauth-private.key ]; then
    cd /var/www/impress.test && php artisan passport:keys
fi

if [ ! -d /var/www/impress.test/public/app/game/vendor ]; then
    cd /var/www/impress.test/public/app/game && composer update
fi

if [ ! -d /var/www/fast.test/vendor ]; then
    cd /var/www/fast.test && composer update
fi


# Set storage permission to writable
chmod -R o+w /var/www/fluent.test/storage /var/www/fluent.test/bootstrap/cache
chmod -R o+w /var/www/express.test/storage /var/www/express.test/bootstrap/cache
chmod -R o+w /var/www/act.test/storage /var/www/act.test/bootstrap/cache
chmod -R o+w /var/www/impress.test/storage /var/www/impress.test/bootstrap/cache
chmod -R o+w /var/www/fast.test/storage /var/www/fast.test/bootstrap/cache

# Start php-fpm
php-fpm --nodaemonize