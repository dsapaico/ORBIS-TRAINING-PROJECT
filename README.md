# Ejercicio 1
Capacitación: Git, bash y docker
Integrantes:
- Andrés Muñoz 
- Deisy Sapaico

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

