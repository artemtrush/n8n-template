#!/bin/bash
set -e

source .env

docker compose run --rm --entrypoint "certbot certonly --webroot -w /var/www/certbot -d ${DOMAIN_NAME} --email ${ADMIN_EMAIL} --agree-tos --no-eff-email" certbot