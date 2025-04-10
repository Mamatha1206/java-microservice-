# Use openjdk:11-jre-slim as base image
FROM openjdk:11-jre-slim

# Copy the JAR file built by Maven into the image
COPY target/*.jar /app.jar

# Expose port 8080
EXPOSE 8080

# Run the Java application
ENTRYPOINT ["java", "-jar", "/app.jar"]
