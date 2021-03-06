#! /bin/bash

# Load image name from command line
[ -z "$1" ] && IMAGE_NAME="ub1404-dri" || IMAGE_NAME="$1"

echo "Building '$IMAGE_NAME' image"
docker build -t "$IMAGE_NAME" . && echo -e "Done!\nList available images with 'docker images'" || echo 'Build failed!'

