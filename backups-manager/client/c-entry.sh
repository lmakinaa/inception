#!/bin/sh

echo "
REACT_APP_URL=$URL
" > .env;

npm run build

serve -s build -l 3300

