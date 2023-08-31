# Use the official Nginx image as the base image
FROM nginx:latest

# Copy the index.html file from your repository to the default Nginx HTML directory
COPY index.html /usr/share/nginx/html

# Expose port 80 to listen for incoming traffic
EXPOSE 80

# The CMD instruction defines the command to be run when the container starts
CMD ["nginx", "-g", "daemon off;"]

