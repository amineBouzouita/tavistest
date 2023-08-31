# Use the official MySQL image as the base image
FROM mysql:latest
RUN apt update && apt install -y default-mysql-client
# Set environment variables for MySQL configuration (customize as needed)
ENV MYSQL_ROOT_PASSWORD=rootpass
ENV MYSQL_DATABASE=mydb
ENV MYSQL_USER=myuser
ENV MYSQL_PASSWORD=mypassword

# Expose the default MySQL port
EXPOSE 3306

# Define the command to run when the container starts
CMD ["mysqld"]
