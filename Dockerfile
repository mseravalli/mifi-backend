FROM java:jre-alpine

RUN apk add --no-cache bash

COPY ./target/universal/mi-fi /opt/mi-fi

EXPOSE 9000

ENTRYPOINT ["/opt/mi-fi/bin/mi-fi"]

MAINTAINER Marco Seravalli <marco.seravalli@gmail.com>
