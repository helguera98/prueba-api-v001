FROM maven:3.9.3 as build

RUN mvn clean package

FROM openjdk:17

COPY /target/prueba_api-v001.jar prueba_api-v001.jar

ENTRYPOINT ["java", "-jar", "prueba_api-v001.jar"]