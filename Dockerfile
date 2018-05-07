FROM registry.hub.docker.com/jenkins/jenkins:2.120-slim
#FROM registry.hub.docker.com/jenkins/jenkins:2.120-alpine

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
