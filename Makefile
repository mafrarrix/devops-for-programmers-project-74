ci:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

dbuild:
	docker build -t mafrarrix/devops-for-programmers-project-74:latest .

dpush:
	docker push mafrarrix/devops-for-programmers-project-74:latest