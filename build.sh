#!/bin/sh

VERSION="${1:-8.0.5}"
IMAGE="jamiecarl/communigate"

docker build \
	--build-arg VERSION="${VERSION}" \
	-t ${IMAGE}:"${VERSION}" \
       	-t ${IMAGE}:latest \
	.
docker push \
	${IMAGE}:${VERSION}
	${IMAGE}:latest
