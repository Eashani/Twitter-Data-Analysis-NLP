# Use an official Python runtime as a parent image
FROM python:3.7-slim

MAINTAINER Naveed Tahir <naveedtahir@live.com>

WORKDIR /src

# Copies any source-code you've written into the image
COPY . .

# packages needed for SPEEDY and some other python packages
RUN set -ex && apt-get update && pip install jupyter nltk tweepy matplotlib


# starts a jupyter notebook
CMD jupyter notebook --allow-root --port=9999 --ip='0.0.0.0' --NotebookApp.token='' --NotebookApp.password=''
