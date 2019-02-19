# @telamonian/theme-darcula

[![Build Status](https://travis-ci.org/telamonian/theme-darcula.svg?branch=master)](https://travis-ci.org/telamonian/theme-darcula)

Darcula theme for Jupyterlab. Modelled after the classic Intellij theme.

## Prerequisites

* JupyterLab

## Installation

```bash
jupyter labextension install @telamonian/theme-darcula
```

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
