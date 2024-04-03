FROM node:20.11.0

ARG WORKDIR=/var/www/html

ENV WORKDIR=${WORKDIR}

WORKDIR /var/www/html

# RUN npm install pm2@latest -g
RUN npm install nodemon --global
# RUN npm i

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
# RUN ln -s /usr/local/bin/entrypoint.sh /

# RUN chmod -R 755 $WORKDIR
# RUN chown -R www-data:www-data $WORKDIR



EXPOSE 3000

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]

# ENTRYPOINT ["pm2", "start", "widget.js", "--", "--port", "3000"]

# CMD [ "entrypoint" ]