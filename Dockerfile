# Use Java 17 (or any version you need)
FROM eclipse-temurin:21-jdk-alpine

# Set working directory
WORKDIR /app

# Copy your JAR into the container
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Expose port (adjust if your app runs on another port)
EXPOSE 8080

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
