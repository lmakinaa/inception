#!/bin/sh

echo "
VOLUMES_ROOT_PATH=/volumes/
HISTORY_PATH=$BACKUPS_HISTORY_PATH
" > .env;

. ./.venv/bin/activate;

python3 backend.py

