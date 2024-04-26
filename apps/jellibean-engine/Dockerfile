FROM node:18
ARG WORKDIR=/var/www/jellibean-engine.test
ENV WORKDIR=${WORKDIR}
ENV NODE_ENV=development


RUN npm install -g ionic
# RUN npm install
# COPY ./ /src/
# RUN npm run-script build:prod
# FROM nginx:alpine
# RUN rm -rf /usr/share/nginx/html/*
# COPY --from=build /app/www/ /usr/share/nginx/html/


WORKDIR $WORKDIR


COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

EXPOSE 3333

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]
