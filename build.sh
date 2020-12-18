#!/bin/bash

IMAGE=denyo/elastic-curator
TAG=$(cat curator/_version.py | perl -pe '($_)=/([0-9]+([.][0-9]+)+)/')

docker build --build-arg VERSION=$TAG -t $IMAGE:$TAG -t $IMAGE:latest .

docker push $IMAGE:$TAG
docker push $IMAGE:latest
