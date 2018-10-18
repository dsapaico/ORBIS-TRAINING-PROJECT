docker tag node:10.10.0-slim dsapaicoa/orbis-training-docker:0.1.0
docker push dsapaicoa/orbis-training-docker:0.1.0
docker tag dsapaicoa/orbis-training-docker:0.1.0 dsapaicoa/orbis-training-docker:0.2.0 
docker run --name nginx-deisy -d -p 1080:80 021ef2ecbc3a
docker-compose up
docker run -rm -it -v $PWD/:/app/ --workdir=/app/ dsapaicoa/orbis-training-docker:2.0.0 npm install
docker run -it -v $PWD/:/app/ --workdir=/app/ --expose 3030-35729 -p 3030:3030 dsapaicoa/orbis-training-docker:2.0.0 npm start
docker run -it -v $PWD/:/app/ --workdir=/app/ --expose 3030-35729 -p 1042:3030 dsapaicoa/orbis-training-docker:2.0.0 npm start
docker run -it -v $PWD/:/app/ --workdir=/app/ --expose 3030-35729 -p 1042:3030 dsapaicoa/orbis-training-docker:2.0.0 npm run release

Parte 8. paso 5
docker run --entrypoint="echo" --rm -ti dsapaicoa/orbis-training-docker:2.0.0 Ejecutando contenedor... 
--environment nombre="Janet"