FROM openjdk:15-jdk-slim AS build

COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
COPY src src

RUN chmod +x ./mvnw  \
    && ./mvnw install -DskipTests

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

#####################################
FROM openjdk:15-jdk-slim
COPY --from=bulid app.jar .
ENTRYPOINT ["java","-jar","/app.jar"]