#!/bin/bash
set -e
echo "First building/deploying the hadoop connector"
cd ../../hadoop
mvn clean install deploy -DskipTests
echo "Now building/deploying the spark connector"
cd -
mvn clean install deploy -DskipTests

