#!/bin/bash

echo "Navigating to Laravel..."
cd /home/container/public_www/

echo "Updating with composer..."
composer update

echo "Clearing config..."
php artisan config:clear

if [ ! -f .env ]; then
    echo "Copying .env exmaple file"
    cp .env.example .env
    echo "Generating key"
    php artisan key:generate
fi

echo "Starting Laravel..."
php artisan serve --host 0.0.0.0 --port ${SERVER_PORT}