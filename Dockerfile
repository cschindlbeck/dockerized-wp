
FROM ubuntu:latest

# Install Apache and other necessary packages
RUN apt-get update && apt-get install -y apache2

# Copy your VirtualHost configuration into the container
COPY apache-config/000-default.conf /etc/apache2/sites-enabled/000-default.conf

# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]
