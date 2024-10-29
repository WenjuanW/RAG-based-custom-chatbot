#!/bin/bash

# Name of the conda environment
ENV_NAME="myenv"

# Check if conda is available
if ! command -v conda &> /dev/null
then
    echo "conda could not be found. Please install Anaconda or Miniconda first."
    exit 1
fi

# Activate the conda environment
echo "Activating conda environment '$ENV_NAME'..."
source activate "$ENV_NAME"

# Check if the environment was activated successfully
if [ $? -eq 0 ]; then
    echo "Conda environment '$ENV_NAME' activated successfully."
else
    echo "Failed to activate conda environment '$ENV_NAME'."
    exit 1
fi