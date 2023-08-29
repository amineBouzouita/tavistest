# Use the official MySQL 8.0 image as the base image
FROM mysql:8.0

# Set environment variables
ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=mydatabase
ENV MYSQL_USER=myuser
ENV MYSQL_PASSWORD=mypassword

# Copy SQL script to initialize the database
COPY init.sql /docker-entrypoint-initdb.d/

# Expose MySQL port (optional)
EXPOSE 3306
