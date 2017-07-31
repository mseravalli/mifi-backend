#!/bin/bash
CURRENT_DIR=$(pwd)
# PGPASSWORD="M1fIn@nc3"

POSTGRES_VERSION=9.4.5
POSTGRES_PSW='M1fIn@nc3'

# sudo runuser -l postgres -c "psql -f $CURRENT_DIR/sql/create_database.sql"
# psql -U mifi -f $CURRENT_DIR/sql/create_tables.sql
# psql -U mifi -f $CURRENT_DIR/sql/populate_categories.sql

docker pull postgres:$POSTGRES_VERSION

docker rm -f postgres
docker run --name="postgres" -e POSTGRES_PASSWORD=$POSTGRES_PSW -d -p 5432:5432 postgres:$POSTGRES_VERSION postgres
docker cp $CURRENT_DIR/sql postgres:/opt/
sleep 10
docker exec -t  postgres runuser -l postgres -c "psql -f /opt/sql/create_database.sql"
docker exec -t  postgres psql -U mifi -f /opt/sql/create_tables.sql
docker exec -t  postgres psql -U mifi -f /opt/sql/populate_categories.sql
docker exec -t  postgres psql -U mifi -f /opt/sql/insert_db.sql
docker exec -t  postgres psql -U mifi -f /opt/sql/insert_kalixa.sql
docker exec -t  postgres psql -U mifi -f /opt/sql/insert_hvb.sql
docker exec -t  postgres psql -U mifi -f /opt/sql/insert_number26.sql
docker exec -t  postgres psql -U mifi -f /opt/sql/bkp/2017-05-31.sql

# npm install -g bower
bower install
