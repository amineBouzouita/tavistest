# Use the official Nginx image as the base image
FROM nginx:latest

# Install PHP and other dependencies
RUN apt-get update && apt-get install -y \
    php7.3-fpm \
    && rm -rf /var/lib/apt/lists/*

# Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy your Nginx server block configuration
COPY nginx.conf /etc/nginx/conf.d/

# Copy your PHP files to the appropriate directory
COPY index.php /var/www/html/

# Expose port 80 to listen for incoming traffic
EXPOSE 80

# Start Nginx and PHP-FPM
CMD ["nginx", "-g", "daemon off;"]

