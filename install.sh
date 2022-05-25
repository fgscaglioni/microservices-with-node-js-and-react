#!/bin/bash

folders=("client"  "comments"  "event-bus"  "moderation"  "posts"  "query")

for folder in ${folders[*]}; do
    cd $folder
    echo "Installing $folder dependencies"
    pnpm i
    cd ..
done