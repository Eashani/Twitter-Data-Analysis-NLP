# NLP-Ninjas

**Note**: You need to have `docker` installed on your machine.

This is a dockerized dev env created to ensure smooth collaboration over the course of the project.

The given `Dockerfile` specifies the structure of the image created. Please try NOT to create any files outside the included `shared` dir.

Please follow the Build and Run steps below and you'll have the `Jupyter` notebook accessible at **localhost:9999**.

## Build

This commands builds the image from the `Dockerfile` and tags it appropriately. This image will be used to run a container below.

`docker build -f Dockerfile -t nlp:latest .`

## Run
This command run a container named `temp` from the image created earlier. A container port is exposed to the same port on the host. Also, a bind mount is created which specifies the `shared` folder on the host (in the dir where we run these docker commands) as the source. The corresponding target is `/src/shared` inside the container. The `--rm` ensures that the container is removed automatically when it exits.

`docker run --rm -it -p 9999:9999 --name temp --mount type=bind,source="$(pwd)"/shared,target=/src/shared nlp:latest`


### Issues?
- If you get permissions related error, try the commands with `sudo`.
- If you are on Windows, use Git shell if you run into command line issues.
- Please do not create any files, other than in the `shared` dir on the host or the `shared` folder in the Jupyter tree.
- Contact me (Naveed) for any other issues. I also recommend Googling things.
