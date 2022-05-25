#!/bin/bash

images=("client" "comments" "event-bus" "moderation" "posts" "query")

for image in ${images[*]}; do
    cd $image
    echo "Building image for $image"
    docker build -t "fgscaglioni/$image" .
    cd ..
done