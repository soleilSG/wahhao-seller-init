FROM composer:1.8.5

ENV GIT_REPOSITORY=
ENV GIT_USER=
ENV GIT_PASSWORD=

RUN apk add --no-cache --virtual .php-extensions-build \
    build-base \
    libzip-dev \
    libpng-dev \
    libjpeg-turbo-dev \
    freetype-dev \
    && docker-php-ext-install pdo_mysql exif \
    && docker-php-ext-configure gd --with-gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ --with-png-dir=/usr/include/ \
    && docker-php-ext-install gd

COPY init.sh /init.sh
RUN chmod +x /init.sh

WORKDIR /var/www/html

CMD ["/bin/sh", "-c", "/init.sh"]