#!/bin/bash

image_date="$(date +%Y%m%d-%H%M%S)"
image_tag="cpuid/az-cli-kubectl-helm:${image_date}"
echo "Image Tag: ${image_tag}"

docker build -t "$image_tag" .
docker push "$image_tag"
