#!/usr/bin/env bash

# This script is used to build the project

#set -e

ARTIFACT_ID="karavel"
VERSION="1.0-SNAPSHOT"
EXECUTABLE_ID="karavelx"

# Build the project

./mvnw clean package

# compile to an uber jar

native-image --no-fallback --initialize-at-build-time -jar target/${ARTIFACT_ID}-${VERSION}.jar ${EXECUTABLE_ID}

# Compress the executable with UPX
upx --best --lzma ${EXECUTABLE_ID}