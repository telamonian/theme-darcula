#!/bin/bash

# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
set -ex
set -o pipefail

ci_install() {
    # Install JupyterLab and enable the server extension
    pip install -q --upgrade pip
    pip --version
    pip install --pre jupyterlab
    pip install cookiecutter
    jupyter serverextension enable --py jupyterlab
}

ci_script() {
    # set a custom user-settings directory
    export JUPYTERLAB_SETTINGS_DIR="./.jupyter/lab/user-settings"
    THEME_SETTINGS="${JUPYTERLAB_SETTINGS_DIR}/@jupyterlab/apputils-extension/themes.jupyterlab-settings"

    # Create a theme extension using the cookiecutter default inputs
    # cookiecutter . --no-input

    # install theme
    jupyter labextension install .

    # enable the theme in user-settings
    mkdir -p $(dirname $THEME_SETTINGS)
    printf "%s\n" "{" "    \"theme\": \"mytheme\"" "}" > $THEME_SETTINGS

    # print out a confirmation that the extension is installed
    jupyter labextension list

    # run a test of the main JupyterLab app with the theme enabled
    python -m jupyterlab.browser_check
}

while getopts ":is" flag; do
    case "${flag}" in
        i) ci_install
           return 0 ;;
        s) ci_script
           return 0 ;;
    esac
done
