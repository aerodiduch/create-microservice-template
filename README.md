# create-microservice-template

[![License: MIT](https://img.shields.io/github/license/aerodiduch/create-microservice-template)](LICENSE) ![Bash](https://img.shields.io/badge/bash-4EAA25?logo=gnubash&logoColor=white) ![FastAPI](https://img.shields.io/badge/FastAPI-009688?logo=fastapi&logoColor=white)

[Español](README.es.md)

Are you tired of creating the same folder structure over and over for your projects? Well, I am. That's why I made a little script that sets up a new FastAPI microservice in one go.

Run it inside an empty folder and it creates:

- `.gitignore` and `.dockerignore` for Python, downloaded from GitHub's and Google Cloud's templates;
- `app.Dockerfile`, on `python:3.11-slim`, serving the app with uvicorn on port 60610;
- a `README.md` to start from;
- a Git repo with a pre-commit hook that refreshes `requirements.txt` from the virtual environment on every commit;
- a virtual environment (`venv`) with `fastapi`, `requests`, `python-dotenv` and `uvicorn`;
- a minimal FastAPI app in `app.py`;
- and a first commit with all of it.

## Install

Needs Bash, Git, curl and Python 3, on Linux or macOS.

```sh
git clone https://github.com/aerodiduch/create-microservice-template
mkdir -p ~/.local/bin
cp create-microservice-template/create-microservice-template.sh ~/.local/bin/
chmod +x ~/.local/bin/create-microservice-template.sh
```

`~/.local/bin` has to be in your `PATH`.

## Usage

```sh
mkdir my-new-service && cd my-new-service
create-microservice-template.sh
venv/bin/uvicorn app:app --reload
```

The README it generates says `uvicorn src.app:app`, but the app is in `app.py`, so the command is `uvicorn app:app`.

## License

MIT, see [LICENSE](LICENSE).
