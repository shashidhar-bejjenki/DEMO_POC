FROM tomcat:8.0-alpine

LABEL maintainer="shadh.b@gmail.com"

ADD DemoPOC.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
