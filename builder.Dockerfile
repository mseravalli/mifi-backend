# this image is used to store the dependencies and to speed the compilation time
FROM openjdk:8-jdk

ADD ./mifi.tar /opt/

WORKDIR /opt/

RUN apt-get update
RUN apt-get install -y zip
RUN bash ./activator clean
RUN bash ./activator update
RUN rm -rf /opt/*

MAINTAINER Marco Seravalli <marco.seravalli@gmail.com>

