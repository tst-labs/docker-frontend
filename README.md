# frontend

Imagem docker utilizada para servir frontend no padrão _Single Page Application_.

## Uso

- Os arquivos a serem servidos devem ser copiados para a pasta
  `/usr/share/nginx/html/`.

- Variáveis de ambiente iniciadas com `FRONTEND_ENV_` serão injetadas em
  `window.env.`. Por exemplo, a variável de ambiente `FRONTEND_ENV_API` será
  injetada em `window.env.API`.

- Essa injeção ocorre no arquivo `__env.js` disponível do servidor web. Para que
  essas variáveis de ambiente sejam injetadas será necessário importar esse
  arquivo.

## Exemplo

```
FROM tstlabs/frontend:latest

ENV FRONTEND_ENV_VISIVEL="Variável visível no arquivo __env.js servidor no root do servidor web"
ENV HIDDEN_ENV="Variável escondida"

ADD build /usr/share/nginx/html/
```
