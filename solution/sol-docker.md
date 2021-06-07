
## Test the app
docker build -t spring-demo .

docker run -p 3050:3050 --name spring-demo -t spring-demo





## Useful Resources
- https://snyk.io/wp-content/uploads/10-best-practices-to-containerize-Java-applications-with-Docker.pdf
- https://docs.docker.com/develop/develop-images/dockerfile_best-practices/
- https://hub.docker.com/_/openjdk/?tab=tags&page=1&ordering=last_updated&name=11-jre
