# docker build . -t webapp && docker run -p 8080:8080 --name webapp webapp
FROM openjdk:13-jdk-alpine

COPY target/webapp-0.0.1-SNAPSHOT.jar webapp-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-Dserver.port=$PORT", "-jar", "/webapp-0.0.1-SNAPSHOT.jar"]
EXPOSE 8080:8080