#!/bin/sh

# clone the repository to the book-output directory
git clone -b gh-pages \
  https://${GH_TOKEN}@github.com/${TRAVIS_REPO_SLUG}.git \
  book-output
cd book-output
cp -r ../_book/* ./
git add *
git commit -m"Update the book"
git push -f origin gh-pages
