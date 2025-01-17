FROM openjdk:8-jdk-alpine
LABEL maintainer="moonseo.kim@nhn.com"
EXPOSE 8080
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
