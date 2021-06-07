FROM openjdk:15-jdk-slim AS build

WORKDIR /home

COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
COPY src src

# Build the dependecies in a dedicated layer
RUN apt update && apt install -y unattended-upgrades && unattended-upgrade \
    && chmod +x ./mvnw  \
    && ./mvnw install -DskipTests

# The jar will be in the target dir
RUN cp /home/target/*.jar app.jar


#####################################
FROM adoptopenjdk:15-jre-hotspot

RUN useradd --shell /bin/bash --home /home/app -u 1001 spring
WORKDIR /home/app
COPY --from=build /home/*.jar .
USER spring
ENTRYPOINT ["java","-jar","app.jar"]
