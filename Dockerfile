# Use the official MySQL image as the base image
FROM mysql:5.7


# Set environment variables
ENV MYSQL_ROOT_PASSWORD=your_root_password
ENV MYSQL_DATABASE=your_database
ENV MYSQL_USER=your_username
ENV MYSQL_PASSWORD=your_password

# Expose port 3306 for MySQL
EXPOSE 3306
