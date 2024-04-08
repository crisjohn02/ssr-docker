FROM node:18

ARG WORKDIR=/var/www/act-engine.test

ENV WORKDIR=${WORKDIR}
ENV NODE_ENV=development


WORKDIR $WORKDIR


COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

EXPOSE 3333

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]
