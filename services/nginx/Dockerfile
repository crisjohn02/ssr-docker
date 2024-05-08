FROM crisjohn02/nginx:v1-release

# Copy server blocks and create symbolic link
COPY server-blocks/fluent.test.conf /etc/nginx/sites-available/fluent.test.conf
COPY server-blocks/express.test.conf /etc/nginx/sites-available/express.test.conf
# COPY server-blocks/fluent-widget.test.conf /etc/nginx/sites-available/fluent-widget.test.conf
# COPY server-blocks/ws.test.conf /etc/nginx/sites-available/ws.test.conf
# COPY server-blocks/impress.test.conf /etc/nginx/sites-available/impress.test.conf
# COPY server-blocks/eaat2.test.conf /etc/nginx/sites-available/eaat2.test.conf
COPY server-blocks/act.test.conf /etc/nginx/sites-available/act.test.conf
# COPY server-blocks/fast.test.conf /etc/nginx/sites-available/fast.test.conf
# COPY server-blocks/act-engine.test.conf /etc/nginx/sites-available/act-engine.test.conf
# COPY server-blocks/eaat2-engine.test.conf /etc/nginx/sites-available/eaat2-engine.test.conf
# COPY server-blocks/express-engine.test.conf /etc/nginx/sites-available/express-engine.test.conf
COPY server-blocks/fluent-flask.test.conf /etc/nginx/sites-available/fluent-flask.test.conf
# COPY server-blocks/express-engine.test.conf /etc/nginx/sites-available/express-engine.test.conf
# COPY server-blocks/act-engine.test.conf /etc/nginx/sites-available/act-engine.test.conf



RUN ln -s /etc/nginx/sites-available/fluent.test.conf /etc/nginx/conf.d/fluent.test.conf
RUN ln -s /etc/nginx/sites-available/express.test.conf /etc/nginx/conf.d/express.test.conf
# RUN ln -s /etc/nginx/sites-available/fluent-widget.test.conf /etc/nginx/conf.d/fluent-widget.test.conf
# RUN ln -s /etc/nginx/sites-available/ws.test.conf /etc/nginx/conf.d/ws.test.conf
# RUN ln -s /etc/nginx/sites-available/impress.test.conf /etc/nginx/conf.d/impress.test.conf
# RUN ln -s /etc/nginx/sites-available/fast.test.conf /etc/nginx/conf.d/fast.test.conf
# RUN ln -s /etc/nginx/sites-available/eaat2.test.conf /etc/nginx/conf.d/eaat2.test.conf
RUN ln -s /etc/nginx/sites-available/act.test.conf /etc/nginx/conf.d/act.test.conf
# RUN ln -s /etc/nginx/sites-available/act-engine.test.conf /etc/nginx/conf.d/act-engine.test.conf
# RUN ln -s /etc/nginx/sites-available/eaat2-engine.test.conf /etc/nginx/conf.d/eaat2-engine.test.conf
# RUN ln -s /etc/nginx/sites-available/express-engine.test.conf /etc/nginx/conf.d/express-engine.test.conf
RUN ln -s /etc/nginx/sites-available/fluent-flask.test.conf /etc/nginx/conf.d/fluent-flask.test.conf
# RUN ln -s /etc/nginx/sites-available/express-engine.test.conf /etc/nginx/conf.d/express-engine.test.conf
# RUN ln -s /etc/nginx/sites-available/act-engine.test.conf /etc/nginx/conf.d/act-engine.test.conf


COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# port for all tcp apps
EXPOSE 80

# port for soketi
EXPOSE 6001

# port for fluent vite
EXPOSE 5173

# port for express vite
EXPOSE 5174

# port for fast vite
EXPOSE 5175

# port for act vite
EXPOSE 5176

# port for impress vite
EXPOSE 5177

# port for python flask
EXPOSE 5001

EXPOSE 8001

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]