FROM nginx:alpine

RUN mkdir app

COPY PREGUNTAS.md /app
COPY INTRO.md /app 