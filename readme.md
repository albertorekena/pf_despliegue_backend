## Comandos

### Creación y Arranque del Proyecto

#### Desarrollo

```sudo docker compose -f docker-compose-dev.yml up -d --force-recreate```

#### Producción

```sudo docker compose up -d --force-recreate```

### Parada y Limpieza del Proyecto
```sudo docker compose down -v --rmi all```