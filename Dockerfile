FROM adoptopenjdk/openjdk11:alpine-jre
WORKDIR /app
ADD target/spring-postgres-docker-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]