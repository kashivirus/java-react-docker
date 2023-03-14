FROM openjdk:11.0.11-jdk-slim-buster AS Jarbuilder
WORKDIR app
COPY . .
RUN bash -c " ./mvnw clean install"

FROM openjdk:11.0.11-jdk-slim-buster
WORKDIR app
COPY --from=Jarbuilder app/target/web-0.0.1-SNAPSHOT.jar app.jar
CMD ["java","-jar","app.jar"]
