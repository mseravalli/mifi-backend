FROM java:jre
MAINTAINER Marco Seravalli <marco.seravalli@gmail.com>

ENV ARTIFACT mi-fi
COPY target/universal/$ARTIFACT-$VERSION.zip /opt/
RUN unzip -o /opt/$ARTIFACT-$VERSION.zip -d /opt/
RUN ln -s /opt/$ARTIFACT-$VERSION /opt/$ARTIFACT
RUN echo 'Complete'
