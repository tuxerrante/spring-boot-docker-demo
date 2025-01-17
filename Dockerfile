FROM openjdk:15-jdk-slim

COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
COPY src src

RUN ./mvnw install -DskipTests

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar