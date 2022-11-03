#!/bin/sh

# マイグレーションを実行
docker compose -f docker-compose.yml exec app python manage.py makemigrations --noinput
docker compose -f docker-compose.yml exec app python manage.py migrate --noinput
docker compose -f docker-compose.yml exec app python manage.py createsuperuser

