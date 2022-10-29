# docker-jenkins

## Documentation

* https://www.digitalocean.com/community/tutorials/how-to-automate-jenkins-setup-with-docker-and-jenkins-configuration-as-code
* https://github.com/jenkinsci/configuration-as-code-plugin

## Credentials

Create a file called `credentials.json` here. Don't add it to GIT.

## build docker image

    make build

## run the image

    make run