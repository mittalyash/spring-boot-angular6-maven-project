# Pull base image
From tomcat:8-jre8


# Copy to images tomcat path
ADD tutorial-server/target/tutorial-app.war /usr/local/tomcat/webapps/
