#!/bin/bash
CONTAINER_ID="788c4d0de780"
DATE="2017-10-31"
docker exec -t ${CONTAINER_ID} pg_dump -U mifi --format=p > bkp/${DATE}.sql
