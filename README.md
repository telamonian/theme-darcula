# @telamonian/theme-darcula

[![Build Status](https://travis-ci.org/telamonian/theme-darcula.svg?branch=master)](https://travis-ci.org/telamonian/theme-darcula)

Darcula theme for Jupyterlab. Modelled after the classic Intellij theme.

![darcula_preview](darcula_preview.png)

## Prerequisites

- JupyterLab

## Installation

```bash
jupyter labextension install @telamonian/theme-darcula
```

## Development

For a development install (requires npm version 4 or later), do the following in the repository directory:

```bash
jlpm install
jupyter labextension install .
```

To rebuild the package and the JupyterLab app:

```bash
jlpm run build
jupyter lab build
```
