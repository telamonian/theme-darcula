#!/usr/bin/env bash

VERSION=4.0.0

## force version in package.json to match VERSION from this script
npm --no-git-tag-version version $VERSION --force --allow-same-version

## pypi stuff
# build the tar release and binary wheels
rm -rf build dist
python setup.py sdist bdist_wheel

# release to the test server
# twine upload --repository-url https://test.pypi.org/legacy/ dist/*

# release to the production server
twine upload dist/*

## npmjs stuff
# dry run build and release
# npm publish --access public --dry-run

# build and release
npm publish --access public

## git tagging
git commit -a -m "commit for version ${VERSION} release"
git tag "v${VERSION}"
git push
git push --tags
