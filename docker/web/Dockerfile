FROM php:7.3-apache
COPY php.ini /usr/local/etc/php/

COPY laravel.conf /etc/apache2/sites-available/laravel.conf

RUN apt-get update \
  && apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng-dev \
  && docker-php-ext-install pdo_mysql mysqli mbstring gd iconv \
  && a2dissite 000-default.conf && a2ensite laravel.conf && a2enmod rewrite \
  && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
