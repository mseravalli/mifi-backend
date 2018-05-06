#!/bin/bash
sbt clean
sbt dist
export VERSION=`grep 'version :=' build.sbt | awk '{print $3}' | sed 's/\"//g'`
unzip ./target/universal/mi-fi-$VERSION.zip -d ./target/universal/
mv target/universal/mi-fi-$VERSION target/universal/mi-fi
docker build -t mseravalli/mifi-backend:$VERSION .
docker push mseravalli/mifi-backend:$VERSION 
