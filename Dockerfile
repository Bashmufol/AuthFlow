FROM openjdk:21-jdk-slim
WORKDIR /app


COPY pom.xml .

COPY ./target/student-app.jar ./student-app.jar
CMD ["java", "-jar", "student-app.jar"]