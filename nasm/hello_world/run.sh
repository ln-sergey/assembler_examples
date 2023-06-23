#!/bin/bash

project_dir=$(basename "$(pwd)")

# Build executable
make target="$project_dir"

# Run executable
./build/"$project_dir"
