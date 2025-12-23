# Use the official Java 22 image
FROM eclipse-temurin:25-jdk

RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

# Install nslookup (dnsutils)
RUN apt-get update && apt-get install -y dnsutils && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy the jar file
COPY target/kafkaStudy-0.0.1-SNAPSHOT.jar app.jar

# Command to run the application
CMD ["java", "-jar", "app.jar"]
