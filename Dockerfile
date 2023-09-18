# Use an official Apache HTTP Server image as the base image
FROM httpd:latest

# Copy the index.html file from the local context into the container
COPY index.html /usr/local/apache2/htdocs/

# Optionally, you can expose port 80 for HTTP traffic
EXPOSE 80

# You can add additional configuration or commands here if needed

# Start the Apache HTTP Server when the container runs
CMD ["httpd", "-D", "FOREGROUND"]
