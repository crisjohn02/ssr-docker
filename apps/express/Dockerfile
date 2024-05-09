FROM crisjohn02/php8.2:v1-release

ARG WORKDIR=/var/www/express.test
ENV DOCUMENT_ROOT=${WORKDIR}
ENV LARAVEL_PROCS_NUMBER=1
ARG HOST_UID=1000
ENV USER=www-data
ENV COMPOSER_ALLOW_SUPERUSER=1

# Set working directory
WORKDIR $WORKDIR

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
RUN ln -s /usr/local/bin/entrypoint.sh /


RUN usermod -u ${HOST_UID} www-data
RUN groupmod -g ${HOST_UID} www-data

RUN chmod -R 755 $WORKDIR
RUN chown -R www-data:www-data $WORKDIR

EXPOSE 9000

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]
