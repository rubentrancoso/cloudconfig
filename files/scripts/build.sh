#!/bin/bash
#
# build image
# you must have internet access
#
cd ../..
mvn clean install docker:build -DskipTests
