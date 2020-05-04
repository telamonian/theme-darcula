#!/usr/bin/env bash

VERSION=1.1.3

## git tagging
git tag "v${VERSION}"
git push origin "v${VERSION}"

## pypi stuff
# build the tar release and binary wheels
# python setup.py sdist bdist_wheel

# build the tar release
#python setup.py sdist

# release to the test server
# twine upload --repository-url https://test.pypi.org/legacy/ dist/*

# release to the production server
#twine upload dist/*

## npmjs stuff
# dry run build and release
# npm publish --access public --dry-run

# build and release
npm publish --access public
