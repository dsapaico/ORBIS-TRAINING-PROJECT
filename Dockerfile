FROM dsapaicoa/orbis-training-docker:0.2.0

RUN mkdir app

COPY PREGUNTAS.md /app

RUN cd app && ls

RUN cat app/PREGUNTAS.md