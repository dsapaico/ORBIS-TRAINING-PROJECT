AUTHOR_NAME = "Daisy"

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
	docker run --rm -it -v $(PWD)/:/app/ --workdir=/app/ dsapaicoa/orbis-training-docker:2.0.0 npm install

start:
	docker run --rm -it -v $(PWD)/:/app/ --workdir=/app/ --expose 3030-35729 -p 3030:3030 dsapaicoa/orbis-training-docker:2.0.0 npm start

release:
	docker run --rm -it -v $(PWD)/:/app/ --workdir=/app/ --expose 3030-35729 -p 3030:3030 dsapaicoa/orbis-training-docker:2.0.0 npm run release

greet:
	docker run -e nombre=${nombre} --entrypoint="/app/resources/example.sh" -v $(PWD)/:/app/ --rm -ti dsapaicoa/orbis-training-docker:2.0.0

# funciones
define mostrar_user
	@cat app/telefonos.txt | grep $(name) | awk '{print $$2}'
endef

define mostrar_fono
	@cat app/telefonos.txt | grep $(name) | awk '{print $$1}'
endef