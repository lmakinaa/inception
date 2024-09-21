#!/bin/sh

echo "
REACT_APP_URL=http://$URL:5000
" > .env;

npm run build

serve -s build -l 3300

