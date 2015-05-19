#!/bin/sh

echo "installing php composer..."
curl -sS https://getcomposer.org/installer | php -- --install-dir=./bin --filename=composer
chmod +x ./bin/composer
