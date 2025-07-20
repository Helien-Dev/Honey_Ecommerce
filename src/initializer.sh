#!/bin/bash


./wait-for-it.sh db:5432 --timeout=60 --strict -- echo "db is ready."

python manage.py makemigrations
python manage.py migrate

gunicorn Honey_Bun.wsgi:application --bind "0.0.0.0:8000"
