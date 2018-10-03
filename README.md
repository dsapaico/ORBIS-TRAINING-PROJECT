docker tag node:10.10.0-slim dsapaicoa/orbis-training-docker:0.1.0
docker push dsapaicoa/orbis-training-docker:0.1.0
docker tag dsapaicoa/orbis-training-docker:0.1.0 dsapaicoa/orbis-training-docker:0.2.0 
docker run --name nginx-deisy -d -p 1080:80 021ef2ecbc3a
docker-compose up
docker run -it -v $PWD/:/app/ --workdir=/app/ dsapaicoa/orbis-training-docker:2.0.0 npm install