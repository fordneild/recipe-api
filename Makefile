start:
	@docker-compose run app sh -c "python manage.py startapp core"
test:
	@docker-compose run app sh -c "python manage.py test && flake8"
lint:
	@docker-compose run app sh -c "flake8"