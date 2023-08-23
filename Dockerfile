FROM maven:3.9.3 as build

WORKDIR /app

COPY . /app

RUN mvn clean package

FROM openjdk:17

COPY --from=build /app/target/prueba_api-v001.jar /app/prueba_api-v001.jar

ENTRYPOINT ["java", "-jar", "/app/prueba_api-v001.jar"]