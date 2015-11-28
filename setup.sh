#!/bin/bash
CURRENT_DIR=`pwd`
echo 'This script removes all the existing data.'
echo 'Do you want to proceed? y/n'
read CONTINUE
# CONTINUE="y"
if [ "$CONTINUE" != "y" ]; then
  exit
fi
export PGPASSWORD="M1fIn@nc3"
sudo runuser -l postgres -c "psql -f $CURRENT_DIR/sql/create_database.sql"
psql -U mifi -f $CURRENT_DIR/sql/create_tables.sql
psql -U mifi -f $CURRENT_DIR/sql/populate_categories.sql

echo "Insert the names of the banks that will be stored."
echo "Insert one bank name at a time and then press enter."
echo "Type 'q' when done."
echo "Currently available: hvb, db, kalixa"
ACCOUNT=""
while [ "$ACCOUNT" != "q" ]
do
  read ACCOUNT
  if [ "$ACCOUNT" = "hvb" ] || [ "$ACCOUNT" = "db" ] || [ "$ACCOUNT" = "kalixa" ]; then
    psql -U mifi -f $CURRENT_DIR/sql/insert_${ACCOUNT}.sql
  elif [ "$ACCOUNT" = "q" ]; then
    echo "Setup complete."
  else
    echo "Bank not supported."
  fi
done

sudo npm install -g bower
bower install

