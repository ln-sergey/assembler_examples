#!/bin/bash

# Remove existing container
docker container stop assembler-container
docker container rm assembler-container

# Build the Docker image
docker build -t assembler-dev .

# Run the container
docker run -it --name assembler-container -v "$(pwd)/../":/app assembler-dev
