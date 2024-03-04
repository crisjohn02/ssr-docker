FROM nginx:1.25.3

ENV NODE_MAJOR=20

# Remove default nginx default site
RUN rm -rf /etc/nginx/conf.d/default.conf \
    && rm -rf /etc/nginx/sites-enabled/default \
    && rm -rf /etc/nginx/sites-available/default

# Remove and replace the default config file
# RUN rm -rf /etc/nginx/nginx.conf
# COPY config/proxy.inc /etc/nginx/proxy.inc
# COPY config/nginx.conf /etc/nginx/nginx.conf

# Install Nodejs
RUN apt-get update && apt-get install -y ca-certificates curl gnupg
RUN curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
RUN echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list
RUN apt-get update &&  apt-get install nodejs -y

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# install nano
RUN apt update && apt install nano

# Copy server blocks and create symbolic link
COPY servers/fluent.test.conf /etc/nginx/sites-available/fluent.test.conf
COPY servers/express.test.conf /etc/nginx/sites-available/express.test.conf
COPY servers/fluent-widget.test.conf /etc/nginx/sites-available/fluent-widget.test.conf
COPY servers/ws.test.conf /etc/nginx/sites-available/ws.test.conf
COPY servers/impress.test.conf /etc/nginx/sites-available/impress.test.conf
COPY servers/fast.test.conf /etc/nginx/sites-available/fast.test.conf
COPY servers/act.test.conf /etc/nginx/sites-available/act.test.conf

# RUN mkdir -p /etc/nginx/sites-enabled
RUN ln -s /etc/nginx/sites-available/fluent.test.conf /etc/nginx/conf.d/fluent.test.conf
RUN ln -s /etc/nginx/sites-available/express.test.conf /etc/nginx/conf.d/express.test.conf
RUN ln -s /etc/nginx/sites-available/fluent-widget.test.conf /etc/nginx/conf.d/fluent-widget.test.conf
RUN ln -s /etc/nginx/sites-available/ws.test.conf /etc/nginx/conf.d/ws.test.conf
RUN ln -s /etc/nginx/sites-available/impress.test.conf /etc/nginx/conf.d/impress.test.conf
RUN ln -s /etc/nginx/sites-available/fast.test.conf /etc/nginx/conf.d/fast.test.conf
RUN ln -s /etc/nginx/sites-available/act.test.conf /etc/nginx/conf.d/act.test.conf

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
# RUN ln -s /usr/local/bin/entrypoint.sh /

EXPOSE 80
EXPOSE 6001
EXPOSE 5173
EXPOSE 5174

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]
# CMD [ "/usr/sbin/nginx", "-g", "daemon off;" ]

