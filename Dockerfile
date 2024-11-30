# Use the official Tomcat image from Docker Hub
FROM tomcat:9-jdk11-openjdk-slim

# Set the maintainer label (optional)
LABEL maintainer="hintechnologies.ittrainings@gmail.com"

# Set environment variables (optional)
ENV CATALINA_HOME /usr/local/tomcat
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64

# Copy your custom web application(s) to the Tomcat webapps folder (optional)
# Make sure you have your .war files in the 'webapps' folder in the same directory as your Dockerfile
COPY ./webapps/*.war /usr/local/tomcat/webapps/

# Expose Tomcat's default port (8080) to the outside world
EXPOSE 8080

# Run Tomcat when the container starts
CMD ["catalina.sh", "run"]
