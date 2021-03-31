#!/bin/bash

# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
set -ex
set -o pipefail

ci_install() {
    # Install JupyterLab
    pip install -q --upgrade pip
    pip --version
    pip install --upgrade --upgrade-strategy=eager "jupyterlab~=3.0"
}

ci_script() {
    # Build and install this theme extension
    python -m pip install .

    # print out a confirmation that the extension is installed
    jupyter labextension list

    # directly check for this specific labextension
    jupyter labextension list 2>&1 | grep -ie "@telamonian/theme-darcula.*OK"

    # set a custom user-settings directory
    export JUPYTERLAB_SETTINGS_DIR="./.jupyter/lab/user-settings"
    THEME_SETTINGS="${JUPYTERLAB_SETTINGS_DIR}/@jupyterlab/apputils-extension/themes.jupyterlab-settings"

    # enable the theme in user-settings
    mkdir -p $(dirname $THEME_SETTINGS)
    printf "%s\n" "{" "    \"theme\": \"Darcula\"" "}" > $THEME_SETTINGS

    # run a test of the main JupyterLab app with the theme enabled
    python -m jupyterlab.browser_check
}
