# Use a base image that supports your database, for example, MySQL
FROM mysql:8.3.0

# Set environment variables
ENV MYSQL_ROOT_PASSWORD=secret
ENV MYSQL_DATABASE=fluent
ENV MYSQL_USER=local
ENV MYSQL_PASSWORD=secret

# Copy the SQL dump file to the container
COPY fluent.sql /docker-entrypoint-initdb.d/fluent.sql

# Expose port if necessary
EXPOSE 3306