# Dùng Tomcat 9 + JDK17
FROM tomcat:9.0-jdk17-temurin

# Xoá webapps mặc định
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR của bạn vào ROOT
COPY target/survey.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
