FROM tomcat:8.0-alpine

LABEL maintainer="shadh.b@gmail.com"

RUN apt-get update && \
    apt-get -y install software-properties-common && \
    add-apt-repository -y ppa:webupd8team/java && \
    echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
    echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections && \
    apt-get update && \
    apt-get -y install oracle-java8-installer

ADD DemoPOC.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
