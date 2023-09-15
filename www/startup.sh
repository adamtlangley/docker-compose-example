#!/bin/bash

service nginx start
service php8.1-fpm start

env > /var/www/.env

while true; do sleep 1; done;

