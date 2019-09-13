# frontend

Imagem docker utilizada para servir frontend no padrão _Single Page Application_.

## Uso

Os arquivos a serem servidos devem ser copiados para a pasta `/usr/share/nginx/html/`.

```
FROM tstlabs/frontend:latest

ADD build /usr/share/nginx/html/
```

- Variáveis de ambiente iniciadas com `FRONTEND_ENV_` serão injetadas em
  `window.env.`. Por exemplo, a variável de ambiente `FRONTEND_ENV_API` será
  injetada em `window.env.API`.

- Essa injeção ocorre no arquivo `__env.js` disponível do servidor web. Para que
  essas variáveis de ambiente sejam injetadas será necessário importar esse
  arquivo.
