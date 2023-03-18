#!/bin/bash

echo "Creating template for microservices..."

# Cloning some .ignore files...
curl -sSL https://raw.githubusercontent.com/GoogleCloudPlatform/getting-started-python/main/optional-kubernetes-engine/.dockerignore > .dockerignore
curl -sSL https://raw.githubusercontent.com/github/gitignore/main/Python.gitignore > .gitignore


# Creating dockerfile

cat << EOF > app.Dockerfile
FROM python:3.11-slim

WORKDIR /code/

COPY ./requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . /code/

EXPOSE 60610

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "60610", "--reload"]
EOF


# Creating README file with basic information

cat << 'EOF' > README.md
# microservice-template

This is microservice based on FastAPI which will handle...

## Running it locally
```
uvicorn src.app:app --host 0.0.0.0 --port 60699 --reload
```
EOF

git init

# Creating the hook for auto-updating requirements on every commit.

cat << 'EOF' > .git/hooks/pre-commit
#!/bin/sh
echo "Hold on tight, we're updating the requirements.txt file!"
venv/bin/pip freeze > requirements.txt
git add requirements.txt
echo "All done! :)"
EOF

chmod +x .git/hooks/pre-commit

# Installing some pip packages.
python3 -m venv venv
venv/bin/pip install fastapi requests python-dotenv uvicorn

# Creating the simplest FastAPI app example

cat << 'EOF' > app.py
from fastapi import FastAPI, Request

app = FastAPI()

@app.post("/")
async def home(request: Request):
    body = await request.json()
    return "200 HTTPS OK"
EOF

git add . && git commit -m "first commit"