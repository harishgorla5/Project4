# Use the official Tomcat image from Docker Hub
FROM tomcat:latest

# Copy your WAR file(s) to the Tomcat webapps directory
# Replace `your-webapp.war` with the actual WAR file name or use a folder with multiple WAR files
COPY ./webapps/*.war /usr/local/tomcat/webapps/

# Expose port 8080 for Tomcat (default HTTP port)
EXPOSE 8080

# Run Tomcat when the container starts
CMD ["catalina.sh", "run"]
