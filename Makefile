all: install

install:
	docker-compose run web rails new . --force --no-deps --database=postgresql