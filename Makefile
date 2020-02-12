.PHONY: all
all: test logs

.PHONY: init
init:
	rm -rf ./myapp && docker-compose run web rails new . --force --no-deps --database=postgresql

.PHONY: test
test:
	docker-compose down && docker-compose up -d

.PHONY: logs
logs:
	docker-compose logs -f