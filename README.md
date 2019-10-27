# NLP-Ninjas

**Note**: You need to have `docker` installed on your machine. If you are on Windows, use Git shell if you run into commandline issues.

This is a dockerized dev env created to ensure smooth collaboration over the course of the project.

The given `Dockerfile` specifies the structure of the image created. Please try not to create any files outside the give `shared` dir.

Please follow the Build and Run steps below and you'll have the `Jupyter` notebook accessible at localhost:9999.

## Build 

`docker build -f Dockerfile -t nlp:latest .`

## Run

`docker run --rm -it -p 9999:9999 --name temp --mount type=bind,source="$(pwd)"/shared,target=/src/shared nlp:latest`


### Issues?
- If you get permissions related error, try the commands with `sudo`.
- Please do not create any files, other than in the `shared` dir on the host or the `shared` folder in the Jupyter tree.
- Contact me (Naveed) for any other issues. I also recommend Googling things.
