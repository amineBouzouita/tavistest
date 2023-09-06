# Use an official PHP image as the base image
FROM php:apache

# Install phpMyAdmin
RUN apt-get update && apt-get install -y phpmyadmin

# Create a symbolic link to phpMyAdmin in the webroot
RUN ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin

# Expose port 80 for web traffic
EXPOSE 80

# Set environment variables
ENV PMA_HOST=db
ENV MYSQL_ROOT_PASSWORD=your_root_password

# Start the Apache web server
CMD ["apache2-foreground"]
