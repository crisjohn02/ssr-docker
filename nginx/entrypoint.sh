#!/bin/bash

# Run npm run dev for fluent
if [ -d /var/www/fluent.test/node_modules ]; then
    (cd /var/www/fluent.test && \
    npm run dev) &
else
    (cd /var/www/fluent.test && npm i && npm run dev) &
fi

if [ -d /var/www/express.test/node_modules ]; then
    (cd /var/www/express.test && \
    npm run dev) &
else
    (cd /var/www/express.test && npm i && npm run dev) &
fi

/usr/sbin/nginx -g "daemon off;"