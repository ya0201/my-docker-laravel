#!/bin/sh

php artisan migrate
docker-php-entrypoint apache2-foreground
