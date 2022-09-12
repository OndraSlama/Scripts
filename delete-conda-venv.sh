#!/bin/bash zsh

# Get the current folder name.
current_folder_name="${PWD##*/}"

# Deactivate any current conda environments and delete the one named as the current folder name.
read "?Do you really want to delete '$current_folder_name' environment?  [[y]/n]" yn
    case $yn in
        [Yy]* ) ;;
        [Nn]* ) return;;
		* ) ;;
    esac
echo "Deleting '$current_folder_name' environment..."
conda deactivate && conda env remove -n $current_folder_name;


