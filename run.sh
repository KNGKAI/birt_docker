#!/bin/sh

# birt
#docker run --rm --name birt-viewer -v $(pwd)/report:/usr/local/tomcat/webapps/birt/report -d psimonov/birt-viewer

docker run --rm -p 8080:8080 --name birt-viewer -d birt-viewer