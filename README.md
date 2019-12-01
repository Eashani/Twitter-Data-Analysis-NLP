# NLP-Ninjas

**Note!!**: I have described two different development setups here. Please use the Docker setup if you have Docker installed and running on your machine. If you have trouble running Docker, please use the Conda setup instead. If you are sharing any files/ntoebooks with the rest of us, please use the `shared` dir provided as part of the setup. Please DO NOT create any files outside the `shared` dir. If you have to, please delete them before committing your code to Git.

# Docker-setup

This is a dockerized development environment created to ensure smooth collaboration over the course of the project. You need to have Docker installed on your machine for this to work.

The given `Dockerfile` specifies the structure of the image created.

Please follow the Build and Run steps below and you'll have the `Jupyter` notebook accessible at **localhost:9999**. You will run these command in the same dir (`nlp19`) where the `Dockerfile` is.

## Build

This commands builds the image from the `Dockerfile` and tags it appropriately. This image will be used to run a container below.

`docker build -f Dockerfile -t nlp:latest .`

## Run

This command runs a container from the image created earlier. A container port is exposed to the same port on the host. Also, a bind mount is created which specifies the `shared` folder on the host (in the dir where we run these docker commands) as the source. The corresponding target is `/src/shared` inside the container. The `--rm` ensures that the container is removed automatically when it exits.

`docker run --rm -it -p 9999:9999 --mount type=bind,source="$(pwd)"/shared,target=/src/shared nlp:latest`

Your starting working directory will be `/src/sahred` inside the container. This is where the Jupyter is running inside the container (check Dockerfile). Any files you created here will also be visible outside the container on your machine. You can use the `shared` dir on your machine to share files with the container.


# Conda-setup

This creates a conda dev env created to ensure smooth collaboration over the course of the project. You need to have conda or miniconda installed on your machine for this to work. I'm using the 4.10 version just so you know.

Please try NOT to create any files outside the included `shared` dir.

## Create a conda env

This commands creates a conda env and installs packages needed for the project. Please change the name `any_name` to anything you want and also make appropriate changes in the subsequent commands.

In the `shared` dir, issue the following command:

`conda create -y -c conda-forge --name any_name jupyter matplotlib tweepy pandas emoji wordcloud gensim pyLDAvis`

You will use this command if you are creating or modifying (more packages) the `any_name` env.

## Run

Actiavate the newly-created conda environment first.

`conda activate any_name`

Once the env is activated, start a Jupyter notebook.

`jupyter notebook --port=9999`

After you are done doing stuff in Jupyter, deactivate the env using:

`conda deactivate any_name`

### Issues?
- If you get permissions related error, try the commands with `sudo`.
- If you are on Windows, use Git shell if you run into command line issues.
- Please do not create any files, other than in the `shared` dir on the host or the `shared` folder in the Jupyter tree.
- Contact me (Naveed) for any other issues. I also recommend Googling things.
