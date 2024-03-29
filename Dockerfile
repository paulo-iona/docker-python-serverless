ARG TAG=python3.7-nodejs15
FROM nikolaik/python-nodejs:${TAG}

MAINTAINER John Paulo Rodriguez<johnpaulorodriguez15@gmail.com>
LABEL maintainer="John Paulo Rodriguez<johnpaulorodriguez15@gmail.com>"

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -yqq\
    curl \
    unzip \
    bash \
    make \
    jq \
    python3-dev \
    build-essential \   
    libssl-dev \
    libffi-dev \
    cargo && \
    npm install -g npm@latest && \
    rm -rf /var/lib/apt/lists/*

# Install Serverless Globally
RUN npm install serverless -g