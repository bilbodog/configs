#!/bin/bash

echo "Navigating to Laravel..."
cd /home/container/laravel/

echo "Updating with composer..."
composer update

echo "Starting Laravel..."
php artisan serve