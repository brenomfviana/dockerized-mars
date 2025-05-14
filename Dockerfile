# Use a base image with Java (MARS requires Java 8+)
FROM eclipse-temurin:17-jdk

WORKDIR /app

RUN apt-get update && apt-get install -y libxrender1 libxtst6 libxi6 && \
    apt-get clean

COPY /mars.jar /mars.jar
COPY /code /app/code

# Set up X11 forwarding (for GUI)
ENV DISPLAY=host.docker.internal:0
