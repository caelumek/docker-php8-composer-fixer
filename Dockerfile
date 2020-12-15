FROM php:8.0-fpm

MAINTAINER lordazymuth <mmmalfc@gmail.com>

COPY --from=composer/composer /usr/bin/composer /usr/bin/composer

RUN curl -L https://github.com/FriendsOfPHP/PHP-CS-Fixer/releases/download/v2.17.1/php-cs-fixer.phar > /usr/local/bin/php-cs-fixer \
    && chmod +x /usr/local/bin/php-cs-fixer \
