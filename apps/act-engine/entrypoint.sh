#!/bin/bash

Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green

set -e

# npm install if node_modules folder does not exists
if [ ! -d /var/www/act-engine.test/node_modules ]; then
    echo ""
    echo "Installing npm dependencies..."
    cd /var/www/act-engine.test && npm install --include=dev
    echo ""
fi

echo ""
echo "***********************************************************"
echo "   Starting ACT Engine node server                    "
echo "***********************************************************"

npm start