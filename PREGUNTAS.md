# Ejercicio 1
Capacitación: Git, bash y docker
Integrantes:
- Andrés Muñoz 
- Deisy Sapaico
- Pedro Vega

1. ¿Qué es y para qué sirve GIT?

Git es un sistema de versionamiento que sirve para registrar cambios en un repositorio.

2. ¿Que es Github o bitbucket?

Plataformas donde se alojan repositorios de Git permitiendo la colaboración entre personas.

3. ¿Qué es y para qué sirve el SSH?

Es un protocolo que permite la comunicación entre una maquina local con un servidor de git.

4. ¿Que pasa si cambio de PC? ¿Tendré que generar el SSH nuevamente?¿Por qué?

Si, porque las llaves de comunicación son únicas y deberian  ser personales.

5. ¿Qué es markdown? ¿Para qué sirve?

En un lenguaje de marcado que sirve para dar formato a textos. su extensión es .md

6. ¿Cómo inicializo y configuro un proyecto de git?

Se inicia creando  un repositorio con el comando:

```
$ git init. 
```

Luego agregamos el nexo por defecto llamado **origin**: 

```
 git remote add origin [Ruta-repositorio-remoto]
```

Debemos tener en cuenta registrar nuestro usuario y correo en la configuración global de git con los  siguientes comandos:

```
$ git config --global user.email "you@example.com"
$ git config --global user.name "Your Name"
```

#Ejercicio 2

1. ¿Que importancia tienen los tags en un proyecto?
Ayudan a versionar proyectos


2. ¿Cual es la diferencia entre un tag normal y un tag anotado en git?
En un tag normal solo indicamos la versión. En un tag anotado colocamos un mensaje asociado al tag.

3. ¿Cómo se sube todos los tags de git que hay en mi local?
Los cambios se suben con comando: git push origin --tags


4. ¿Es necesario loguearse cada vez que subo una imagen a dockerhub?
No, con loguearse una vez basta. Sin embargo se debe estar logueado para subir una imagen la primera vez.

5. ¿Qué es y para que sirve docker?
Docker es una plataforma  que permite desarrollar , implementar y ejecutar aplicaciones dentro de contenedores.

6. ¿Cual es la diferencia entre docker y VirtualBox ?
Docker usa las caracteristicas del kernel de un sistema operativo para ejecutar contenedores. Vitualbox usa los recursos del hardware de la maquina en que nos encontremos.

7. ¿Es necesario depender de una imagen de docker base al crear una imagen nueva?
Generalmente si. Sin embargo, puedo crear una imagen desde cero, sin tener una imagen base.

8. ¿Por que debo anteponer el nombre de usuario en una imagen de docker nueva?
Por que de esa manera docker reconoce mi usuario de docker y sabe a repositorio debe ser subido.

9. ¿Que pasa si creo una imagen sin especificar una version o tag, con que version se crea?
Se crea con el tag 'latest'
7. 

