#!/bin/bash
sbt dist
export VERSION=`grep 'version :=' build.sbt | awk '{print $3}' | sed 's/\"//g'`
unzip ./target/universal/mi-fi-$VERSION.zip -d ./target/universal/
mv target/universal/mi-fi-$VERSION target/universal/mi-fi
docker build -t mseravalli/mifi:$VERSION .
docker build -t mseravalli/postgres:$VERSION sql
