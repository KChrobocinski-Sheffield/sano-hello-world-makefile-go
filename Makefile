GIT_HASH ?= $(shell git log --format="%h" -n 1)

DOCKER_USERNAME ?= kchrobocinskisano
APPLICATION_NAME ?= hello-world

all: build push
 
build:
		 docker build --tag ${DOCKER_USERNAME}/${APPLICATION_NAME}:${GIT_HASH} .
 
push:
		 docker push ${DOCKER_USERNAME}/${APPLICATION_NAME}:${GIT_HASH}