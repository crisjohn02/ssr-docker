FROM node:17

ARG WORKDIR=/var/www/express-engine.test

ENV WORKDIR=${WORKDIR}
ENV NODE_ENV=development

RUN apt-get -y update \
	&& apt-get install -y git

RUN npm install -g @vue/cli @vue/cli-service-global @vue/cli-service

WORKDIR $WORKDIR

RUN apt-get autoremove -y \
    && apt-get autoclean -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

EXPOSE 7878

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]
