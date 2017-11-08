FROM postgres:9.4.5

RUN mkdir -p /home/postgres

COPY ./ /opt/sql/
COPY initdb.sh /docker-entrypoint-initdb.d/

EXPOSE 5432

MAINTAINER Marco Seravalli <marco.seravalli@gmail.com>
