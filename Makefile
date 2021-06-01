start:
	@docker-compose run app sh -c "python manage.py startapp core"
test:
	@docker-compose run app sh -c "python manage.py test"
makemigrations:
	@docker-compose run app sh -c "python manage.py makemigrations"
migrate:
	@docker-compose run app sh -c "python manage.py migrate"
lint:
	@docker-compose run app sh -c "flake8"
up:
	@docker-compose up
enter:
	@docker exec -it $(ARGS) bash