# Docker Cheat Sheet

```
docker --version
docker image ls

docker build . -t hello_docker:v1

docker image inspect hello_docker:v1

docker run -p 8080:8080 hello_docker:v1

docker ps

docker stats

docker exec -it <containerid> /bin/bash

docker kill <containerid>


// Cleanup
# docker stop $(docker ps -a -q)

# docker rm $(docker ps -a -q)
```