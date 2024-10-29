#!/bin/bash

# Define the environment name and requirements file
ENV_NAME="myenv"
REQUIREMENTS_FILE="requirements.txt"

# Check if Conda is installed
if ! command -v conda &> /dev/null
then
    echo "Conda could not be found. Please install Conda first."
    exit 1
fi

# Create the Conda environment
echo "Creating Conda environment: $ENV_NAME"
conda create --name "$ENV_NAME" -y

# Activate the environment
echo "Activating Conda environment: $ENV_NAME"
source activate "$ENV_NAME"

# Install pip if not already installed
echo "Installing pip in the Conda environment"
conda install pip -y

# Install the required packages
if [ -f "$REQUIREMENTS_FILE" ]; then
    echo "Installing packages from $REQUIREMENTS_FILE"
    pip install -r "$REQUIREMENTS_FILE"
else
    echo "Requirements file $REQUIREMENTS_FILE not found"
    exit 1
fi

echo "Environment setup complete."