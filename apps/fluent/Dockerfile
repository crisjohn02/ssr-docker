FROM php:8.2-fpm

ARG WORKDIR=/var/www/fluent.test
ENV DOCUMENT_ROOT=${WORKDIR}
ENV LARAVEL_PROCS_NUMBER=1
ARG HOST_UID=1000
ENV USER=www-data
ENV COMPOSER_ALLOW_SUPERUSER=1

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libmemcached-dev \
    libzip-dev \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    librdkafka-dev \
    libpq-dev \
    openssh-server \
    zip \
    unzip \
    supervisor \
    sqlite3  \
    nano \
    cron


# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions zip, mbstring, exif, bcmath, intl
RUN docker-php-ext-configure gd --with-freetype --with-jpeg
RUN docker-php-ext-install  zip mbstring exif pcntl bcmath -j$(nproc) gd intl ftp

# Install Redis and enable it. Uncomment next line to enable redis and expose the port
# RUN pecl install redis  && docker-php-ext-enable redis

RUN pecl update-channels

# Install the PHP pdo_mysql extention
RUN docker-php-ext-install pdo_mysql

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Set working directory
WORKDIR $WORKDIR

ADD php.ini $PHP_INI_DIR/conf.d/


COPY nginx.conf /usr/local/etc/php-fpm.d/zz-docker.conf

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
RUN ln -s /usr/local/bin/entrypoint.sh /


RUN usermod -u ${HOST_UID} www-data
RUN groupmod -g ${HOST_UID} www-data

RUN chmod -R 755 $WORKDIR
RUN chown -R www-data:www-data $WORKDIR

EXPOSE 9000

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]
