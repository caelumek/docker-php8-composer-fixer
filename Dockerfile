FROM php:8.0-fpm

COPY --from=composer/composer /usr/bin/composer /usr/bin/composer
COPY --from=unibeautify/php-cs-fixer /usr/local/bin/php-cs-fixer /usr/local/bin/php-cs-fixer
