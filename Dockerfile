# docker build . --tag webapp && docker run -p 8080:8080 webapp
FROM openjdk:8-jdk-alpine

COPY target/webapp-0.0.1-SNAPSHOT.jar webapp-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "/webapp-0.0.1-SNAPSHOT.jar"]
EXPOSE 8080:8080