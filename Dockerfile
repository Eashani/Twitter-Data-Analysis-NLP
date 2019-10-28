# Use an official Python runtime as a parent image
FROM python:3.7-slim

# optional
MAINTAINER Naveed Tahir <naveedtahir@live.com>

# set the workdir in the container
WORKDIR /src

# Copies any optional files/dirs to the container
# currently it's just the contents of the nlp19 dir
COPY /shared .

# update source dirs and install the python packages we'll potentially need
RUN set -ex && apt-get update && pip install jupyter nltk tweepy matplotlib


# start a jupyter notebook on the port 9999, disable the annoying authentication
CMD jupyter notebook --allow-root --port=9999 --ip='0.0.0.0' --NotebookApp.token='' --NotebookApp.password=''
