#!/bin/sh

if [ ! -f ./bin/composer ]; then
  curl -sS https://getcomposer.org/installer | php -- --install-dir=./bin --filename=composer
  chmod +x ./bin/composer
fi
