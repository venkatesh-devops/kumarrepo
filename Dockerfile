FROM tomcat:8.0-alpine
MAINTAINER Venkatesh
COPY target/insurance.war /usr/local/tomcat/webapps/insurance.war
ADD tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
EXPOSE 8080
CMD [ "catalina.sh" , "run"]
