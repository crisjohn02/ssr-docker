#!/bin/bash

Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
echo ""
echo "***********************************************************"
echo "   Starting Nginx server                    "
echo "***********************************************************"

set -e

# Run npm run dev for fluent
if [ -d /var/www/fluent.test/node_modules ]; then
    (cd /var/www/fluent.test && \
    npm run dev) &
else
    (cd /var/www/fluent.test && npm i && npm run dev) &
fi

# Run npm run dev for express
if [ -d /var/www/express.test/node_modules ]; then
    (cd /var/www/express.test && \
    npm run dev) &
else
    (cd /var/www/express.test && npm i && npm run dev) &
fi

# Run npm run dev for act
if [ -d /var/www/act.test/node_modules ]; then
    (cd /var/www/act.test && \
    npm run dev) &
else
    (cd /var/www/act.test && npm i && npm run dev) &
fi

# Run npm run dev for act
if [ -d /var/www/fast.test/node_modules ]; then
    (cd /var/www/fast.test && \
    npm run dev) &
else
    (cd /var/www/fast.test && npm i && npm run dev) &
fi

/usr/sbin/nginx -g "daemon off;"