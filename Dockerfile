FROM node:10.10.0-slim

RUN mkdir app

COPY resources/PREGUNTAS.md /app
COPY resources/INTRO.md /app 
