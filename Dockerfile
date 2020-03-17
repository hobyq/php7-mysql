FROM php:7.3
RUN docker-php-ext-install pdo_mysql  && \
    pecl install xdebug && \
    docker-php-ext-enable xdebug
