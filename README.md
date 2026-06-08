# Inmobiliaria Salazar - Landing en Cloud Run

Landing estatica servida con Nginx dentro de Cloud Run. El flujo de CI/CD se configura desde Cloud Run con la opcion `Dockerfile`.

## Configuracion en la pantalla de Cloud Build

Usa estos valores:

- Rama: `^main$`
- Tipo de compilacion: `Dockerfile`
- Ubicacion de origen: `/Dockerfile`

Despues haz clic en `Guardar`. Desde ese momento, cada push a `main` construira una nueva imagen con Cloud Build y desplegara una nueva revision en Cloud Run.

## Antes de guardar

Asegurate de que estos archivos esten subidos al repositorio de GitHub:

```powershell
git add .
git commit -m "chore: add cloud run dockerfile setup"
git push origin main
```

## Archivos del proyecto

- `Index.html`: contiene toda la landing page.
- `Dockerfile`: le dice a Cloud Build como crear la imagen Docker.
- `nginx.conf`: configura Nginx para servir el HTML en el puerto `8080`.
- `.dockerignore`: evita enviar archivos innecesarios al contexto de Docker.
- `README.md`: documenta como desplegar el proyecto en Cloud Run.

## Permisos

Si el despliegue falla por permisos, revisa la cuenta de servicio usada por Cloud Build. Normalmente necesita permisos para construir imagenes, escribir en Artifact Registry y desplegar en Cloud Run.
