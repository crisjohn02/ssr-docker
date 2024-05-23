#!/bin/bash

# Set storage permission to writable
chmod -R o+w /app/storage /app/bootstrap/cache

# Install composer dependencies
if [ ! -d /app/vendor ]; then
    composer update
fi

php artisan octane:frankenphp  --watch --max-requests=100 --host=0.0.0.0