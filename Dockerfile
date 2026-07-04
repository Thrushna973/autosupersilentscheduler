FROM php:8.2-apache

# Install MySQLi extension for PHP (required by db.php)
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Copy application source files
COPY . /var/www/html/

# Expose port 80
EXPOSE 80
