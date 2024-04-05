#!/bin/bash

Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green

set -e

# npm install -g @vue/cli

# npm install if node_modules folder does not exists
if [ ! -d /var/www/express-engine.test/node_modules ]; then
    echo ""
    echo "Installing npm dependencies..."
    cd /var/www/express-engine.test && npm install
    echo ""
fi

echo ""
echo "***********************************************************"
echo "   Starting Express Engine node server                    "
echo "***********************************************************"

# npm run serve