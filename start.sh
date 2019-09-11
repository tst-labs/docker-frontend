#!/bin/sh

# Qualquer variável que iniciar com FRONTEND_ENV_ será adicionada em window.env.
env | grep FRONTEND_ENV_ | sed -e 's/^FRONTEND_ENV_/window.env./' | sed -e 's/$/";/' | sed -e 's/=/="/' > /usr/share/nginx/html/__env.js

nginx -g "daemon off;"