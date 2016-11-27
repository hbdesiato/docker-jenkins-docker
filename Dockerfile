FROM jenkinsci/jenkins
USER root
ADD https://get.docker.com/builds/Linux/x86_64/docker-latest.tgz /
COPY jenkins-docker.sh /usr/local/bin/
ENTRYPOINT ["/bin/tini", "--", "jenkins-docker.sh"]

