# create-microservice-template

[![License: MIT](https://img.shields.io/github/license/aerodiduch/create-microservice-template)](LICENSE) ![Bash](https://img.shields.io/badge/bash-4EAA25?logo=gnubash&logoColor=white) ![FastAPI](https://img.shields.io/badge/FastAPI-009688?logo=fastapi&logoColor=white)

[English](README.md)

¿Cansado de armar la misma estructura de carpetas una y otra vez para tus proyectos? Yo sí. Por eso hice un script chico que arma un microservicio nuevo con FastAPI de una sola vez.

Lo corrés adentro de una carpeta vacía y crea:

- `.gitignore` y `.dockerignore` para Python, bajados de las plantillas de GitHub y de Google Cloud;
- `app.Dockerfile`, sobre `python:3.11-slim`, que sirve la app con uvicorn en el puerto 60610;
- un `README.md` para arrancar;
- un repo de Git con un hook de pre-commit que actualiza `requirements.txt` desde el entorno virtual en cada commit;
- un entorno virtual (`venv`) con `fastapi`, `requests`, `python-dotenv` y `uvicorn`;
- una app mínima de FastAPI en `app.py`;
- y un primer commit con todo eso.

## Instalación

Necesita Bash, Git, curl y Python 3, en Linux o macOS.

```sh
git clone https://github.com/aerodiduch/create-microservice-template
mkdir -p ~/.local/bin
cp create-microservice-template/create-microservice-template.sh ~/.local/bin/
chmod +x ~/.local/bin/create-microservice-template.sh
```

`~/.local/bin` tiene que estar en tu `PATH`.

## Uso

```sh
mkdir mi-servicio-nuevo && cd mi-servicio-nuevo
create-microservice-template.sh
venv/bin/uvicorn app:app --reload
```

El README que genera dice `uvicorn src.app:app`, pero la app está en `app.py`, así que el comando es `uvicorn app:app`.

## Licencia

MIT, ver [LICENSE](LICENSE).
