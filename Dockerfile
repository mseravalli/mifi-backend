FROM java:jre
MAINTAINER Marco Seravalli <marco.seravalli@gmail.com>

ENV ARTIFACT mi-fi-$VERSION
COPY target/universal/$ARTIFACT.zip /opt/
RUN unzip -o /opt/$ARTIFACT.zip -d /opt/
RUN echo 'Complete'
