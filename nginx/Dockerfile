FROM nginx:latest

# Remove default nginx default site
RUN rm -rf /etc/nginx/conf.d/default.conf \
    && rm -rf /etc/nginx/sites-enabled/default \
    && rm -rf /etc/nginx/sites-available/default

# Remove and replace the default config file
# RUN rm -rf /etc/nginx/nginx.conf
# COPY config/proxy.inc /etc/nginx/proxy.inc
# COPY config/nginx.conf /etc/nginx/nginx.conf

# Copy server blocks and create symbolic link
COPY servers/fluent.test.conf /etc/nginx/sites-available/fluent.test.conf
COPY servers/express.test.conf /etc/nginx/sites-available/express.test.conf
COPY servers/fluent-widget.test.conf /etc/nginx/sites-available/fluent-widget.test.conf
COPY servers/ws.test.conf /etc/nginx/sites-available/ws.test.conf

# RUN mkdir -p /etc/nginx/sites-enabled
RUN ln -s /etc/nginx/sites-available/fluent.test.conf /etc/nginx/conf.d/fluent.test.conf
RUN ln -s /etc/nginx/sites-available/express.test.conf /etc/nginx/conf.d/express.test.conf
RUN ln -s /etc/nginx/sites-available/fluent-widget.test.conf /etc/nginx/conf.d/fluent-widget.test.conf
RUN ln -s /etc/nginx/sites-available/ws.test.conf /etc/nginx/conf.d/ws.test.conf

EXPOSE 80
EXPOSE 6001

CMD [ "/usr/sbin/nginx", "-g", "daemon off;" ]

