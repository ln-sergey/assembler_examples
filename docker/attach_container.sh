#!/bin/bash

# Get the ID or name of the running container
container_id=$(docker ps -qf "name=assembler-container")

# Attach a shell to the container
docker exec -it "$container_id" /bin/sh
