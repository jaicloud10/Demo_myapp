FROM eclipse-temurin:17-jdk-alpine

EXPOSE 8080

ENV APP_HOME /usr/src/app

WORKDIR $APP_HOME

# Copy the JAR file(s) into the app directory
# If you expect only one JAR, specify its exact name or copy all to directory
COPY target/*.jar $APP_HOME/

# Rename the jar file to app.jar if you want to standardize the name
# Use a shell command in the CMD or RUN step, or specify the actual JAR name below

CMD ["sh", "-c", "java -jar $(ls $APP_HOME/*.jar | head -n 1)"]

