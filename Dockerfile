FROM nginx:alpine

LABEL maintainer="Tribunal Superior do Trabalho"
LABEL version="1.0.0"

EXPOSE 8080

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY start.sh /usr/bin/start.sh

RUN chgrp -R 0 /usr/share/nginx && \
    chmod -R g=u /usr/share/nginx && \
    chgrp -R 0 /var/cache/nginx && \
    chmod -R g=u /var/cache/nginx && \
    chgrp -R 0 /var/run && \
    chmod -R g=u /var/run && \
    chmod a+x /usr/bin/start.sh

CMD ["/usr/bin/start.sh"]
