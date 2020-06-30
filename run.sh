#!/bin/sh

# docker run --rm --name birt-viewer -v $(pwd)/report/:/usr/local/tomcat/webapps/birt/report/ -d birt-viewer

docker run --rm -p 8080:8080 --name birt-viewer -d birt-viewer

sleep 5

docker cp $(pwd)/report/. $(docker ps -lq):/usr/local/tomcat/webapps/birt/report/