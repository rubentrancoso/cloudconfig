#!/bin/bash
#
# build image
# you must have internet access
#
cd ../..
mvn clean resources:resources package docker:build -DskipTests