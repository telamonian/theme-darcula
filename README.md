# @telamonian/theme-darcula

[![Build Status](https://travis-ci.org/telamonian/theme-darcula.svg?branch=master)](https://travis-ci.org/telamonian/theme-darcula)
[![npm](https://img.shields.io/npm/v/@telamonian/theme-darcula.svg)](https://www.npmjs.com/package/@telamonian/theme-darcula)

Darcula theme for Jupyterlab. Modelled after the classic Intellij theme. Now with support for all JupyterLab 2.x versions!

![darcula_preview](darcula_preview.png)

## Prerequisites

- JupyterLab

## Installation

```bash
jupyter labextension install @telamonian/theme-darcula
```

## Development

For a development install (requires JupyterLab 2.0.0 or later), do the following in the repository directory:

```bash
jlpm build:dev
```

To rebuild the package and the JupyterLab app:

```bash
jlpm build
jupyter lab build
```
