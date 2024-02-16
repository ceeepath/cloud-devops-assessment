# Use the official Ubuntu image as the base image
FROM ubuntu:latest

# Update the package repository and install Apache
RUN apt-get update && apt-get install -y apache2

# Copy web application files into the Apache document root directory
COPY ./website-files /var/www/html

# Expose port 80 to allow external access to the web server
EXPOSE 80

# Start the Apache service when the container starts
CMD ["apache2ctl", "-D", "FOREGROUND"]