#!/bin/bash

# Define the environment name
ENV_NAME="myenv"

# Check if Conda is installed
if ! command -v conda &> /dev/null
then
    echo "Conda could not be found. Please install Conda first."
    exit 1
fi

# Activate the environment
echo "Activating Conda environment: $ENV_NAME"
conda activate "$ENV_NAME"

echo "Environment '$ENV_NAME' is now active."