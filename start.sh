#!/bin/sh

# Optional: wait for DB if needed
# ./wait-for-it.sh db_cont:3306

# Run migrations
python manage.py migrate --noinput

# Start Gunicorn
exec gunicorn notesapp.wsgi:application --bind 0.0.0.0:8000