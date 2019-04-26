#!/usr/bin/env bash

echo "pull git repository..."
git clone https://${GIT_USER}:${GIT_PASSWORD}@${GIT_REPOSITORY} .

chmod 777 -R storage
chmod 777 -R bootstrap/cache

echo "composer install..."
composer install

