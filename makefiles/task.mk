
build: ##@docker Build image : make build, make build image=nginx
	docker build -f ./Dockerfile -t dsapaicoa/orbis-training-docker:2.0.0 .

push:
	make login
	docker push dsapaicoa/orbis-training-docker:2.0.0

up:
	docker-compose up

login:
	docker login -u dsapaicoa -p deisyworks