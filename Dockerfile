FROM tomcat:10.1.34-jdk11
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/sample-webapp.war /usr/local/tomcat/webapps/sample-webapp.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
