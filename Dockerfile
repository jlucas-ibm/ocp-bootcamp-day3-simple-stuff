FROM docker.io/websphere-liberty:javaee8
COPY target/simple-stuff.war /config/dropins/
COPY config/server.xml /config/
COPY config/server.env /config/

USER root
RUN mkdir /my-special-folder
COPY ./Dockerfile /my-special-folder
