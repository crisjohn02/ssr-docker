#!/bin/sh

APP_HOST=0.0.0.0
APP_PORT=5001
APP_WORKERS=2

# Uncomment this two lines below for production
# echo -e "===== Gunicorn running at http://${APP_HOST}:${APP_PORT} with ${APP_WORKERS} workers ====="
# gunicorn -b $APP_HOST:$APP_PORT -w=$APP_WORKERS wsgi:app

# Comment this two lines below for development
echo -e "===== Local server running at http://${APP_HOST}:${APP_PORT} with ${APP_WORKERS} workers ====="
python app2.py