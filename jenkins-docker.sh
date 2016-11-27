#! /bin/bash
groupadd -g "$(stat -c %g /var/run/docker.sock)" docker
gpasswd -a jenkins $(stat -c %G /var/run/docker.sock)
chown jenkins:jenkins "$JENKINS_HOME"
exec su -c /usr/local/bin/jenkins.sh jenkins

