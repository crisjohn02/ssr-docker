#!/bin/bash

Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green

set -e

# npm install if node_modules folder does not exists
if [ ! -d /var/www/jellibean-engine.test/node_modules ]; then
    echo ""
    echo "Installing npm dependencies..."
    cd /var/www/jellibean-engine.test &&  npm install --include=dev
    echo ""
fi

echo ""
echo "***********************************************************"
echo "   Starting jellibean Engine node server                    "
echo "***********************************************************"

ionic serve --host=jellibean-engine.test --port=3333
# ionic build