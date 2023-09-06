# Use an official Apache HTTP Server image as the base image
FROM httpd:2.4

# Optionally, copy your web content into the container
COPY index.html /usr/local/apache2/htdocs

# Expose port 80 to allow incoming HTTP traffic
EXPOSE 80

# Define the entry point for the container
CMD ["httpd-foreground"]
