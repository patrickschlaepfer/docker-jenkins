FROM jenkins/jenkins:lts-jdk11

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc.yaml
# ENV JENKINS_OPTS --httpPort=-1 --httpsPort=8083

RUN mkdir /var/jenkins_home/.anypoint/

COPY --chown=jenkins:jenkins executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy
COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt
COPY --chown=jenkins:jenkins casc.yaml /var/jenkins_home/casc.yaml
COPY --chown=jenkins:jenkins credentials.json /var/jenkins_home/.anypoint/credentials

RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt

EXPOSE 8080