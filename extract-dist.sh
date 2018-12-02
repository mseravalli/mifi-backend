#!/bin/bash
export VERSION=`grep 'version :=' build.sbt | awk '{print $3}' | sed 's/\"//g'`
unzip ./target/universal/mi-fi-$VERSION.zip -d ./target/universal/
mv target/universal/mi-fi-$VERSION target/universal/mi-fi
