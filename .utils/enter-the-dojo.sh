#!/usr/bin/env bash
# Mikey Garcia, @gikeymarcia
# Meant to be sourced before returning to development

set -e

activate="./env/bin/activate"
if [ -f "$activate" ]; then
    figlet "enter the dojo"
    ls -l
    source "$activate"
    python -m pip install -r ./requirements_dev.txt
    python -m pip list
else
    echo "Could not find virtualenv activator at $activate"
    exit 1
fi