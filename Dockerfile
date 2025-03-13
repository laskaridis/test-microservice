# Build stage
FROM maven:3.9.9-eclipse-temurin-21-alpine as build
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline -B
COPY src ./src
RUN mvn clean package

# Run stage
FROM eclipse-temurin:21-alpine
WORKDIR /app
ENV GREETING="Hello, World!"
COPY --from=build /app/target/demo-*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
