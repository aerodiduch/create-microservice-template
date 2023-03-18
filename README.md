# create-microservice-template

Are you tired of creating over and over the same folder structure for your projects? Well, I am. Thats why i decided to make a little CLI tool to make the set up of a new project a bit easier.

What this script will create:
- Standard `.dockerignore` file for Python
- Standard `.gitignore` file for Python
- Simple `app.Dockerfile` template for FastAPI app.
- Git hook to update virtual enviroment's requirements after every commit.
- Virtual enviroment with `FastAPI`, `dotenv` and `uvicorn`.
- Git repo initialization
- Sample FastAPI app.

It's just a simple bash script that creates a basic folder and file structure for FastAPI projects.

#
## How to use it

Just simply clone this repository:

```
git clone https://github.com/aerodiduch/create-microservice-template
```

You can either have this script globally or locally available. 
If you want to have it only for the local user, follow this steps:

```
mv create-microservice-template.sh ~/.local/bin
chmod +x ~/.local/bin/create-microservice-template.sh
```

After that you can just create a new folder, cd into it and execute the script
```sh
mkdir my-new-project && cd $_
create-microservice-template.sh
```

Congratulations, you have your own template for FastAPI microservices, quick and easy! 