.PHONY: up down build migrate makemigrations logs shell

up:
	docker compose up

down:
	docker compose down

build:
	docker compose build

migrate:
	docker compose run --rm backend python manage.py migrate

makemigrations:
	docker compose run --rm backend python manage.py makemigrations

logs:
	docker compose logs -f

shell:
	docker compose run --rm backend python manage.py shell
