#!/bin/bash

# Exit immediately if any command fails
set -e

# Define array of directories
directories=(
    "/home/cris/ssr-docker/apps/act/src"
    "/home/cris/ssr-docker/apps/fluent/src"
    "/home/cris/ssr-docker/apps/express/src"
    "/home/cris/ssr-docker/apps/fast/src"
)

# Loop through directories and remove specified files
for dir in "${directories[@]}"; do
    echo "Attempting to remove files in $dir"
    cd "$dir" || { echo "Failed to change directory to $dir"; continue; }  # Continue to the next directory if cd fails
    echo "Changed directory to $dir"
    rm -rf vendor node_modules package-lock.json composer.lock
    echo "Removed files in $dir"
done
