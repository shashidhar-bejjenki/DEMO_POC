FROM alpine:3.7
FROM tomcat:8-jdk8-openjdk

LABEL maintainer="shadh.b@gmail.com"

ADD DemoPOC.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
