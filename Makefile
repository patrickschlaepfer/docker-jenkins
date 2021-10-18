#Dockerfile vars

#vars
IMAGENAME=jenkins
KARATE_VERSION=mulesoft
IMAGEFULLNAME=${IMAGENAME}:${KARATE_VERSION}

.PHONY: help build push all

help:
	    @echo "Makefile commands:"
	    @echo "build"
		@echo "run"
	    @echo "push"
	    @echo "all"

.DEFAULT_GOAL := all

build:
	    @docker build -t ${IMAGEFULLNAME} .

run:
		@docker run --name ${IMAGENAME} \
			--rm -p 8080:8080 \
			--env JENKINS_ADMIN_ID=admin \
			--env JENKINS_ADMIN_PASSWORD=password \
			${IMAGEFULLNAME}
 
push:
	    @docker push ${IMAGEFULLNAME}

all: build push