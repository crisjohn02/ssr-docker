FROM dunglas/frankenphp

ARG WORKDIR=/app
ENV NODE_MAJOR=20

RUN install-php-extensions \
	pdo_mysql \
	gd \
	intl \
	zip \
    mbstring \
    exif \
    pcntl \
    bcmath \
    ftp

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install Nodejs
RUN apt-get update && apt-get install -y ca-certificates curl gnupg
RUN curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
RUN echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list
RUN apt-get update &&  apt-get install nodejs -y

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

RUN npm install --save-dev chokidar

WORKDIR $WORKDIR

COPY frankenphp.entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
RUN ln -s /usr/local/bin/entrypoint.sh /

EXPOSE 8000

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]