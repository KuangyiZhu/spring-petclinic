#Create the runtime image
FROM bellsoft/liberica-openjdk-alpine:17.0.1 AS runtime


# Copy the JAR file from the build stage
COPY ./target/spring-petclinic-3.3.0-SNAPSHOT.jar /app/app.jar


# Define the entrypoint
ENTRYPOINT ["java", "-jar", "/app/app.jar"]

# Expose the application port
EXPOSE 8080
