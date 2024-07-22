#!/bin/bash

# Check if any arguments are provided
if [ $# -eq 0 ]; then
    echo "No arguments provided. Usage: ./dkaravel.sh arg1 arg2 arg3"
    exit 1
fi

# Join all arguments into a single string
ARGS="$*"

# Run the Maven command with the provided arguments
./mvnw --quiet exec:java -Dexec.args="$ARGS"
