#!/bin/bash

cd ..
./wait-for-it.sh db:5432 --timeout=80 --strict -- echo "db is ready."

cd src/

python manage.py collectstatic
python manage.py makemigrations
python manage.py migrate
python manage.py runserver 0.0.0.0:8000
