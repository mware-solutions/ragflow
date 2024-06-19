#!/bin/bash

VERSION=1.0.0
docker login registry.cloud.bigconnect.io
docker build -t ragflow:$VERSION .
docker tag ragflow:$VERSION registry.cloud.bigconnect.io/ragflow:$VERSION
docker push registry.cloud.bigconnect.io/ragflow:$VERSION
