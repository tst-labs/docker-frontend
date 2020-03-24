#!/bin/sh
mkdir -p /tmp/wwwenv
ENV_FILE=/tmp/wwwenv/__env.js

# Qualquer variável que iniciar com FRONTEND_ENV_ será adicionada em window.env.
echo "window.env = {};" > $ENV_FILE
env | grep FRONTEND_ENV_ | sed -e 's/^FRONTEND_ENV_/window.env["/' | sed -e 's/$/";/' | sed -e 's/=/"\]="/' >> $ENV_FILE

echo "Environment file"
cat $ENV_FILE
echo "---"

exec nginx -g "daemon off;"