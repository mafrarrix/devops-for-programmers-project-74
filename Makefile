compose-up:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

compose-build:
	docker build -t mafrarrix/devops-for-programmers-project-74:latest .

compose-push:
	docker push mafrarrix/devops-for-programmers-project-74:latest

ci:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

setup-env:
	test -f .env || cp .env.example .env

install-dependencies:
	docker-compose run --rm app npm install
	
up:
	docker-compose up

down:
	docker-compose down

dev:
	docker-compose up -d

test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

build:
	docker-compose build

push:
	docker-compose push

.PHONY: ci setup-env install-dependencies dev prod test build push
