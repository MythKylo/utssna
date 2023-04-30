# Gunakan image PHP 8.1.x dan web server Apache
FROM php:8.1-apache as php

# Copy konten web ke dalam container
COPY . /var/www/html
# Set kepemilikan ke www-data dan atur permission
RUN chown -R www-data:www-data /var/www/html && \
    chmod -R u+r,g+r,o-wx /var/www/html


# Install mysqli extension agar dapat terhubung dengan database
RUN docker-php-ext-install mysqli

FROM mysql:latest as sql

COPY redlock-db.sql /docker-entrypoint-initdb.d/

FROM jenkins/jenkins:latest
