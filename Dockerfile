FROM node:10.10.0-slim

RUN mkdir app

COPY resources/preguntas.md /app
COPY resources/intro.md /app 

COPY resources/example.sh /resources