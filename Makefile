NAME = "Daisy"
NAME_IMAGE = dsapaicoa/orbis-training-docker
DOCKER_TAG = 2.0.0
DOCKER_IMAGE = $(NAME_IMAGE):$(DOCKER_TAG)


include makefiles/task.mk
include makefiles/deploy-ghpages.mk

.PHONY: all clean Makefile-task.mk
# targets
#all: logger_file mostrar

despliegue:
	@echo "Esta deployando... ${name}"
	$(call mostrar_user)
	@echo "si cometió un error spameenlo..."
	$(call mostrar_fono)
	files := $(shell git log --pretty=format:"%s" | head -n 1ls -al)

logger_file:
	ls -al >> log.txt

mover:
	mkdir app
	mv log.txt app/

mostrar:
	cat log.txt

mi_tarea_por_defecto:
	@echo "Mi tarea por defecto, Hi $(AUTHOR_NAME) :D"

mi_primera_tarea:
	@echo "mi primer target"

install:
	docker run --rm -it -v $(PWD)/:/app/ --workdir=/app/ $(DOCKER_IMAGE) npm install

start:
	docker run --rm -it -v $(PWD)/:/app/ --workdir=/app/ --expose 3030-35729 -p 3030:3030 $(DOCKER_IMAGE) npm start

release:
	docker run --rm -it -v $(PWD)/:/app/ --workdir=/app/ --expose 3030-35729 -p 3030:3030 $(DOCKER_IMAGE) npm run release

greet:
	docker run -e nombre=${name} --entrypoint="/app/resources/example.sh" -v $(PWD)/:/app/ --rm -ti $(DOCKER_IMAGE) 

orbis-training-project:
	@echo 'Hola recursos!'

# funciones
define mostrar_user
	@cat app/telefonos.txt | grep $(name) | awk '{print $$2}'
endef

define mostrar_fono
	@cat app/telefonos.txt | grep $(name) | awk '{print $$1}'
endef