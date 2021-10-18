# docker-jenkins

## Documentation

* https://www.digitalocean.com/community/tutorials/how-to-automate-jenkins-setup-with-docker-and-jenkins-configuration-as-code
* https://github.com/jenkinsci/configuration-as-code-plugin

## build docker image

    docker build -t jenkins:jcasc .

## run the image

    docker run --name jenkins --rm -p 8080:8080 jenkins:jcasc