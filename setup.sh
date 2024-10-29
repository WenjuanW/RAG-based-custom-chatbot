#!/bin/zsh

# Check if conda is available
if ! command -v conda &> /dev/null; then
    echo "conda could not be found. Please install Anaconda or Miniconda first."
    exit 1
fi

# Create the conda environment from the environment.yml file
echo "Creating conda environment from environment.yml..."
conda env create -f environment.yml

# Check if the environment was created successfully
if [ $? -eq 0 ]; then
    echo "Conda environment created successfully."
else
    echo "Failed to create conda environment."
    exit 1
fi