compose-up:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

build:
	docker build -t mafrarrix/devops-for-programmers-project-74:latest .

push:
	docker push mafrarrix/devops-for-programmers-project-74:latest

ci:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

setup-env:
	test -f .env || cp .env.example .env

install-dependencies:
	docker-compose run --rm app npm install
	
compose-up:
	docker-compose up

compose-down:
	docker-compose down

compose-dev:
	docker-compose up -d

compose-test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

compose-build:
	docker-compose build

compose-push:
	docker-compose push

.PHONY: ci setup-env install-dependencies compose-dev prod test compose-build compose-push
