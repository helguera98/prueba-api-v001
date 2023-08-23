FROM openjdk:17
COPY ./prueba_api-v001.jar prueba_api-v001.jar
ENTRYPOINT ["java", "-jar", "prueba_api-v001.jar"]