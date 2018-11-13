build:
	tar -czvf ./kong-app.tar app
	docker container prune
	docker image prune
	docker-compose build
