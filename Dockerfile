# Use a base image with Java (MARS requires Java 8+)
FROM eclipse-temurin:17-jdk

WORKDIR /app

RUN apt-get update && apt-get install -y libxrender1 libxtst6 libxi6 && \
    apt-get clean

COPY download-mars.sh ./download-mars.sh
COPY code ./code

RUN chmod +x ./download-mars.sh && ./download-mars.sh

# Set up X11 forwarding (for GUI)
ENV DISPLAY=host.docker.internal:0

# Default command: Run MARS
CMD ["java", "-jar", "./mars.jar"]
