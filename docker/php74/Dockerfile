# FROM php:7.4-fpm-alpine
ARG PHP74_VERSION

FROM php:$PHP74_VERSION

# Docker php extension 安裝的輔助腳本
# https://github.com/mlocati/docker-php-extension-installer
ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN apk add vim
RUN apk add htop
RUN apk add --no-cache zip libzip-dev
RUN docker-php-ext-configure zip
RUN docker-php-ext-install zip

RUN chmod +x /usr/local/bin/install-php-extensions
RUN install-php-extensions gd 
# RUN install-php-extensions xdebug
RUN install-php-extensions @composer-2.0.9 
RUN install-php-extensions @fix_letsencrypt
RUN install-php-extensions zip
RUN install-php-extensions mysqli
RUN install-php-extensions pdo_mysql
RUN install-php-extensions redis
RUN install-php-extensions intl
# RUN install-php-extensions mongodb
# RUN install-php-extensions pgsql
# RUN install-php-extensions pdo_pgsql

# install node js 
RUN apk add --update nodejs npm
RUN apk add --update npm

USER root

RUN adduser -D jason -u 1000

RUN chown -R jason:jason /var/www/html

USER jason

COPY php.ini /usr/local/etc/php/conf.d/
