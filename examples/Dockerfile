# Use an official PHP image with Apache
FROM php:8.2-apache

# Install MySQL server and required PHP extensions
RUN apt-get update && apt-get install -y \
    mariadb-server \
    && docker-php-ext-install mysqli pdo pdo_mysql \
    && a2enmod rewrite

# Copy your PHP application into the container
COPY ./public_html/ /var/www/html/

# Expose port 80
EXPOSE 80

# Start MySQL and Apache together
CMD service mysql start && apache2-foreground
