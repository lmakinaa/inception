#!/bin/sh

echo "
REACT_APP_BACKEND_URL=$URL:5000
" > .env;

npm run build;

serve -s -p 3300 build
