#!/bin/bash

echo $'
# >>> CUSTOM SCRIPT SETUP >>>
export SCRIPT_PATH="$HOME/scripts"
export PATH="$SCRIPT_PATH:$PATH"

alias create="source $SCRIPT_PATH/create-conda-venv.sh"
alias activate="source $SCRIPT_PATH/activate-conda-venv.sh"
alias deactivate="conda deactivate"
alias delete="source $SCRIPT_PATH/delete-conda-venv.sh"
# <<< CUSTOM SCRIPT SETUP <<<
' >> ~/.zshrc