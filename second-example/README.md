# Test Web Application with Docker :globe_with_meridians::whale:

This is a simple Docker web application with database MySQL.

## Prerequisites

- Docker : [Installation Guide](https://docs.docker.com/get-docker/)
- Git : [Installation Guide](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

## Getting Started

To run this application locally, follow these steps:

1. Create Database Container:

```CMD
> docker pull mysql
```

2. Configuration username and password:

```CMD
> docker run --name app-db -d -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=myDB mysql
```

3. Create Docker file:

```Dockerfile
FROM tomcat:10-jdk17
ADD target/MyWebApp.war /usr/local/tomcat/webapps/MyWebApp.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
```

4. Build the Docker image:

```CMD
> docker build -t my-web-app:1.0 .
```

5. Run the Docker container:

```CMD
> docker run --name app -d -p 8080:8080 my-web-app:1.0
```

6. Use bridge networks:

```CMD
> docker network create my-network
```
