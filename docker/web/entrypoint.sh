#!/bin/sh

composer install
php artisan migrate
docker-php-entrypoint apache2-foreground
