# this image is used to store the dependencies and to speed the compilation time
FROM openjdk:8-jdk

COPY ./* /opt/

WORKDIR /opt/

RUN apt update
RUN apt install -y zip
RUN bash activator clean
RUN bash activator update
RUN rm -rf /opt/*

MAINTAINER Marco Seravalli <marco.seravalli@gmail.com>

