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

# funciones
define mostrar_user
	@cat app/telefonos.txt | grep $(name) | awk '{print $$2}'
endef

define mostrar_fono
	@cat app/telefonos.txt | grep $(name) | awk '{print $$1}'
endef