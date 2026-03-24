#!/usr/bin/env bash
set -e

echo "Waiting for database..."
python manage.py migrate --noinput
echo "Migrations applied."

exec "$@"
