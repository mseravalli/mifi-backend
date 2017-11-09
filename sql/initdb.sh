#!/bin/sh

set -e

psql -f /opt/sql/create_database.sql
psql -U mifi -f /opt/sql/create_tables.sql
psql -U mifi -f /opt/sql/populate_categories.sql
psql -U mifi -f /opt/sql/insert_db.sql
psql -U mifi -f /opt/sql/insert_kalixa.sql
psql -U mifi -f /opt/sql/insert_hvb.sql
psql -U mifi -f /opt/sql/insert_number26.sql
psql -U mifi -f /opt/sql/bkp/2017-10-31.sql

