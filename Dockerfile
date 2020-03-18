FROM php:7.3
RUN apt-get update && \
    apt-get install -y libldap2-dev && \
    ln -s /usr/lib/x86_64-linux-gnu/libldap.so /usr/lib/libldap.so && \
    ln -s /usr/lib/x86_64-linux-gnu/liblber.so /usr/lib/liblber.so && \
    docker-php-ext-install pdo_mysql && \
    pecl install xdebug && \
    docker-php-ext-enable xdebug && \
    docker-php-ext-install ldap
