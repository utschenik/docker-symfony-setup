FROM php:8.1.8-fpm-buster as base

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
# Install Symfony CLI
RUN curl -sS https://get.symfony.com/cli/installer | bash \
    && mv /root/.symfony5/bin/symfony /usr/local/bin/symfony
# Install Git
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git

# Install xdebug
RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

COPY xdebug/conf.d/xdebug.ini /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
COPY xdebug/conf.d/error_reporting.ini /usr/local/etc/php/conf.d/error_reporting.ini

# Just run and copy here the important steps
FROM php:8.1.8-fpm-buster as production
