FROM openjdk:11

COPY ./target/universal/mi-fi /opt/mi-fi

EXPOSE 9000

ENTRYPOINT ["/opt/mi-fi/bin/mi-fi"]

MAINTAINER Marco Seravalli <marco.seravalli@gmail.com>
