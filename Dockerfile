FROM openjdk:19
RUN mkdir /app
COPY out/production/Docker_test/ /app
WORKDIR /app
CMD java main