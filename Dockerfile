FROM tomcat:8.0.23

COPY report/* /report/

COPY birt.war /usr/local/tomcat/webapps/

RUN apt-get update && apt-get install -y openssh-client

CMD catalina.sh run

EXPOSE 8080