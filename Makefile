.PHONY: help up down build migrate makemigrations logs shell

help: ## Show this help message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2}'

up: ## Start all services
	docker compose up

down: ## Stop all services
	docker compose down

build: ## Build all Docker images
	docker compose build

migrate: ## Run database migrations
	docker compose run --rm backend python manage.py migrate

makemigrations: ## Create new migration files
	docker compose run --rm backend python manage.py makemigrations

logs: ## Follow service logs
	docker compose logs -f

shell: ## Open Django shell
	docker compose run --rm backend python manage.py shell
