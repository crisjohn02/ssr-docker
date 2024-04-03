#!/bin/bash

Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
echo ""
echo "***********************************************************"
echo "   Starting Node server                    "
echo "***********************************************************"

set -e

# npm install if node_modules folder does not exists
if [ ! -d /var/www/html/node_modules ]; then
    (cd /var/www/html && npm install && nodemon  widget.js --port=3000) &
fi

(cd /var/www/html && nodemon  widget.js --port=3000)