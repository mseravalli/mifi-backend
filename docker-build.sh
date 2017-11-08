#!/bin/bash
rm -rf ./target/*
sbt dist
export VERSION=`grep 'version :=' build.sbt | awk '{print $3}' | sed 's/\"//g'`
unzip ./target/universal/mi-fi-$VERSION.zip -d ./target/universal/
mv target/universal/mi-fi-$VERSION target/universal/mi-fi
docker build -t mseravalli/mi-fi:$VERSION .

docker build -t mseravalli/postgres:2017-09-30 Dockerfile.postgres
