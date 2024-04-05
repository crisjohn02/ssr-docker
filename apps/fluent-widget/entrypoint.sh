#!/bin/bash

Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
echo ""
echo "***********************************************************"
echo "   Starting Fluent widget node server                    "
echo "***********************************************************"

set -e

# npm install if node_modules folder does not exists
if [ ! -d /var/www/fluent-widget.test/node_modules ]; then
    cd /var/www/fluent-widget.test && npm install && nodemon  widget.js --port=3000
else
    cd /var/www/fluent-widget.test && nodemon  widget.js --port=3000
fi