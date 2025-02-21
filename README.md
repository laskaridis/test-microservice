# Spring Boot REST API Toy Project

This project is a simple Spring Boot REST API that returns a customizable greeting message.
The greeting can be configured via an environment variable.

## Building the Application

Use Maven to compile the application and package it into a JAR file:

```bash
mvn clean package
```

The JAR file will be generated in the `target/` directory.

## Building the Docker Image

Build the Docker image using the provided Dockerfile. Run the following command in the project
root:

```bash
docker build -t spring-boot-rest-api-toy:latest .
```

This command builds the image and tags it as `spring-boot-rest-api-toy:latest`.

## Running the Application with Docker

You can run the Docker container and override the default greeting message using the
`GREETING` environment variable. For example, to run the container with a custom greeting, use:

```bash
docker run -p 8081:8081 -e GREETING='Howdy from Docker!' spring-boot-rest-api-toy:latest
```

Once the container is running, open your browser and navigate to
[http://localhost:8081/hello](http://localhost:8081/hello) to see your greeting message.

> **Note:** If your greeting contains special characters (like an exclamation mark), using single
> quotes can help avoid shell interpretation issues.