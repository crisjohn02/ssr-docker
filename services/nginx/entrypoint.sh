#!/bin/bash

Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
echo ""
echo "***********************************************************"
echo "   Starting Nginx server                    "
echo "***********************************************************"

set -e

# Check jellibean npm dependencies
if [ ! -d /var/www/jellibean/test/node_modules ]; then
    echo "Installing npm dependencies for jellibean...."
    cd /var/www/jellibean.test && npm i
fi

# Check fluent npm dependencies
# if [ ! -d /var/www/fluent/test/node_modules ]; then
#     echo "Installing npm dependencies for fluent...."
#     cd /var/www/fluent.test && npm i
# fi
# # Check express npm dependencies
# if [ ! -d /var/www/express/test/node_modules ]; then
#     echo "Installing npm dependencies for express...."
#     cd /var/www/express.test && npm i
# fi
# # Check act npm dependencies
# if [ ! -d /var/www/act/test/node_modules ]; then
#     echo "Installing npm dependencies for act...."
#     cd /var/www/act.test && npm i
# fi
# # Check fast npm dependencies
# if [ ! -d /var/www/fast/test/node_modules ]; then
#     echo "Installing npm dependencies for fast...."
#     cd /var/www/fast.test && npm i
# fi

# Run npm run dev for jellibean
(cd /var/www/jellibean.test && npm run dev) &

# Run npm run dev for fluent
# (cd /var/www/fluent.test && npm run dev) &

# # Run npm run dev for express
# (cd /var/www/express.test && npm run dev) &

# # Run npm run dev for act
# (cd /var/www/act.test && npm run dev) &

# # Run npm run dev for fast
# (cd /var/www/fast.test && npm run dev) &

/usr/sbin/nginx -g "daemon off;"