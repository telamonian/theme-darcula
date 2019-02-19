# @telamonian/theme-darcula

[![Build Status](https://travis-ci.org/telamonian/theme-darcula.svg?branch=master)](https://travis-ci.org/telamonian/theme-darcula)

Darcula theme for Jupyterlab. Modelled after the classic Intellij theme.

![darcula_preview](darcula_preview.png)

## Prerequisites

* JupyterLab

## Installation

#### Command line install

```bash
jupyter labextension install @telamonian/theme-darcula
```

#### GUI install

Alternatively, you can install the darcula theme using JupyterLab's new Extension Manager GUI, if you have it enabled. Just open the Extension Manager, enter `@telamonian/theme-darcula` in the search bar, and then follow the prompts to install.

You can find instructions for [enabling the Extension Manager here](https://github.com/jupyterlab/jupyterlab/blob/master/docs/source/user/extensions.rst#using-the-extension-manager). The Manager was only recently added, so you'll need to have a new enough version of JupyterLab (one that was released sometime after 07.2018).

## Development

For a development install (requires npm version 4 or later), do the following in the repository directory:

```bash
npm install
jupyter labextension link .
```

To rebuild the package and the JupyterLab app:

```bash
npm run build
jupyter lab build
```
