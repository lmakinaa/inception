#!/bin/sh

echo "
REACT_APP_BACKEND_URL=http://backups-manager-backend:5000
" > .env;

npm run build;

serve -s -p 3300 build
