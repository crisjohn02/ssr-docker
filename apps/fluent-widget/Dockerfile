FROM node:20.11.0

ARG WORKDIR=/var/www/fluent-widget.test

ENV WORKDIR=${WORKDIR}

WORKDIR $WORKDIR

#Install nodemon
RUN npm install nodemon --global


COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh


EXPOSE 3000

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]
