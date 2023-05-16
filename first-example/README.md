# Docker Test Application

This is a simple Docker application that prints "Hello World!" using Java.
```java
   System.out.println("Hello World!");
```
## Prerequisites

- Docker : [Installation Guide](https://docs.docker.com/get-docker/)
- Git : [Installation Guide](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

## Getting Started

To run this application locally, follow these steps:

1. Create Docker file:

```Dockerfile
# Use the OpenJDK 11 image as the base image
FROM openjdk:11

# Create a new app directory for my application files
RUN mkdir /app

# Copy the app files from host machine to image filesystem
COPY out/production/HelloWorldDocker/ /app

# Set the directory for executing future commands
WORKDIR /app

# Run the Main class
CMD java Main
```

2. Build the Docker image:

```Bash
docker build -t docker:1.0 .
```

3. Run the Docker container:

```bash
docker run docker:1.0
```

You should see the output "Hello World!" printed in the console.

```cmd
> Hello World!
```
