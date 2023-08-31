# Use the official MySQL image as the base image
FROM mysql:latest

# Set environment variables for MySQL configuration (customize as needed)
ENV MYSQL_ROOT_PASSWORD=rootpass
ENV MYSQL_DATABASE=mydb
ENV MYSQL_USER=myuser
ENV MYSQL_PASSWORD=mypassword

# Expose the default MySQL port
EXPOSE 3306

# Define the command to run when the container starts
CMD ["mysqld"]

# Use the official Nginx image as the base image
FROM nginx:latest

# Install PHP and other dependencies
RUN apt-get update && apt-get install -y \
    php-fpm \
    php-mysql \
    php-gd \
    php-json \
    php-curl \
    php-mbstring

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy your Nginx server block configuration
COPY nginx.conf /etc/nginx/conf.d/

# Copy your PHP-FPM configuration
COPY php-fpm.conf /etc/php/7.4/fpm/

# Copy your PHP files to the appropriate directory
COPY index.php /var/www/html/

# Expose port 80 to listen for incoming traffic
EXPOSE 80

# Start Nginx and PHP-FPM
CMD service php7.4-fpm start && nginx -g 'daemon off;'

