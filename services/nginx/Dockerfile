FROM nginx:1.25.3

ENV NODE_MAJOR=20

# Remove default nginx default site
RUN rm -rf /etc/nginx/conf.d/default.conf \
    && rm -rf /etc/nginx/sites-enabled/default \
    && rm -rf /etc/nginx/sites-available/default

# Install Nodejs
RUN apt-get update && apt-get install -y ca-certificates curl gnupg
RUN curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
RUN echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list
RUN apt-get update &&  apt-get install nodejs -y

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# install nano
RUN apt-get update && apt install nano

# Copy server blocks and create symbolic link
COPY server-blocks/jellibean.test.conf /etc/nginx/sites-available/jellibean.test.conf
# COPY server-blocks/jellybean.test.conf /etc/nginx/sites-available/jellybean.test.conf
# COPY server-blocks/express.test.conf /etc/nginx/sites-available/express.test.conf
# COPY server-blocks/fluent-widget.test.conf /etc/nginx/sites-available/fluent-widget.test.conf
# COPY server-blocks/ws.test.conf /etc/nginx/sites-available/ws.test.conf
# COPY server-blocks/impress.test.conf /etc/nginx/sites-available/impress.test.conf
# # COPY server-blocks/eaat2.test.conf /etc/nginx/sites-available/eaat2.test.conf
# COPY server-blocks/act.test.conf /etc/nginx/sites-available/act.test.conf
# COPY server-blocks/fast.test.conf /etc/nginx/sites-available/fast.test.conf
# # COPY server-blocks/act-engine.test.conf /etc/nginx/sites-available/act-engine.test.conf
# # COPY server-blocks/eaat2-engine.test.conf /etc/nginx/sites-available/eaat2-engine.test.conf
# # COPY server-blocks/express-engine.test.conf /etc/nginx/sites-available/express-engine.test.conf
# COPY server-blocks/fluent-flask.test.conf /etc/nginx/sites-available/fluent-flask.test.conf
# COPY server-blocks/express-engine.test.conf /etc/nginx/sites-available/express-engine.test.conf
# COPY server-blocks/act-engine.test.conf /etc/nginx/sites-available/act-engine.test.conf
# COPY server-blocks/jellibean-engine.test.conf /etc/nginx/sites-available/jellibean-engine.test.conf


RUN ln -s /etc/nginx/sites-available/jellibean.test.conf /etc/nginx/conf.d/jellibean.test.conf
# RUN ln -s /etc/nginx/sites-available/jellybean.test.conf /etc/nginx/conf.d/jellybean.test.conf
# RUN ln -s /etc/nginx/sites-available/express.test.conf /etc/nginx/conf.d/express.test.conf
# RUN ln -s /etc/nginx/sites-available/fluent-widget.test.conf /etc/nginx/conf.d/fluent-widget.test.conf
# RUN ln -s /etc/nginx/sites-available/ws.test.conf /etc/nginx/conf.d/ws.test.conf
# RUN ln -s /etc/nginx/sites-available/impress.test.conf /etc/nginx/conf.d/impress.test.conf
# RUN ln -s /etc/nginx/sites-available/fast.test.conf /etc/nginx/conf.d/fast.test.conf
# # RUN ln -s /etc/nginx/sites-available/eaat2.test.conf /etc/nginx/conf.d/eaat2.test.conf
# RUN ln -s /etc/nginx/sites-available/act.test.conf /etc/nginx/conf.d/act.test.conf
# # RUN ln -s /etc/nginx/sites-available/act-engine.test.conf /etc/nginx/conf.d/act-engine.test.conf
# # RUN ln -s /etc/nginx/sites-available/eaat2-engine.test.conf /etc/nginx/conf.d/eaat2-engine.test.conf
# # RUN ln -s /etc/nginx/sites-available/express-engine.test.conf /etc/nginx/conf.d/express-engine.test.conf
# RUN ln -s /etc/nginx/sites-available/fluent-flask.test.conf /etc/nginx/conf.d/fluent-flask.test.conf
# RUN ln -s /etc/nginx/sites-available/express-engine.test.conf /etc/nginx/conf.d/express-engine.test.conf
# RUN ln -s /etc/nginx/sites-available/act-engine.test.conf /etc/nginx/conf.d/act-engine.test.conf
# RUN ln -s /etc/nginx/sites-available/jellibean-engine.test.conf /etc/nginx/conf.d/jellibean-engine.test.conf


COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# port for all tcp apps
EXPOSE 80

# port for soketi
EXPOSE 6001

# port for jellibean vite
EXPOSE 5173

# port for jellibean network
EXPOSE 8001

# port for jellibean-engine network
EXPOSE 8002

# port for jellybean
EXPOSE 5174

# port for jellybean network
EXPOSE 8003

# # port for fast vite
# EXPOSE 5175

# # port for act vite
# EXPOSE 5176

# # port for impress vite
# EXPOSE 5177

# # port for python flask
# EXPOSE 5001

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]