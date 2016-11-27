# docker-jenkins-docker

### Usage
```bash
docker run -p 8080:8080 -p 50000:50000 \
-v /var/jenkins_home:/var/jenkins_home \
-v /var/run/docker.sock:/var/run/docker.sock \
-e DOCKER_API_VERSION=$(docker version --format '{{.Server.APIVersion}}') \
desiato/jenkins-docker
```

