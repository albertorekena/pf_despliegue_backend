# Frontend - Proyecto Final - Despliegue

## Creación y Arranque del Proyecto

### Desarrollo

Para el arranque del proyecto, una vez clonado el repositorio, en la terminal se introducirá:

```sudo docker compose -f docker-compose-dev.yml up -d --force-recreate```

Una vez el contenedor se está ejecutando, se modifica el archivo /etc/hosts, introduciéndose la línea:

```127.0.0.1 films-alberto-despliegue-dev.api.com```

Con estas 2 acciones, el Backend ya estaría en funcionamiento.

### Producción

En este caso, hay que considerar las variables de entorno para el correcto funcionamiento de la base de datos.

El comando que arranca el proyecto:

```sudo docker compose up -d --force-recreate```

## Parada y Limpieza del Proyecto

```sudo docker compose down -v --rmi all```