#!/bin/bash zsh

# Ask for the current version of python.
 read "?Define Python version (newest will be used by default): " python_version;

# Get the current folder name.
# This will be used to create the name of the environment.
current_folder_name="${PWD##*/}"

# Create conda environment.
conda create --name $current_folder_name python=$python_version

# Deactivate any current conda environments and activate new environment.
conda deactivate && conda activate $current_folder_name

# Install the requirements into the environment if they exist.
if [ -f requirements.txt ];
then
	if grep -q psycopg2 "requirements.txt"; then
		# There are common issues when installing psycopg2 with pip.
		echo "Installing psycopg2 separately..."
		conda install psycopg2
	fi
    python -m pip install -r requirements.txt
fi