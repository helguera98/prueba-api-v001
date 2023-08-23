FROM maven:3.9.3 as build

WORKDIR /app

COPY . /app

RUN mvn clean package

FROM openjdk:17

EXPOSE 8080

COPY ./prueba_api-v001.jar prueba_api-v001.jar

ENTRYPOINT ["java", "-jar", "prueba_api-v001.jar"]