FROM openjdk:11-jre-slim
WORKDIR /usr/src/app
COPY MyApp.jar .
CMD ["java", "-jar", "MyApp.jar"]
