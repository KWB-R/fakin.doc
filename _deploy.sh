#!/bin/sh

set -e

[ -z "${GITHUB_PAT}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "master" ] && exit 0

git config --global user.email "michael.rustler@kompetenz-wasser.de"
git config --global user.name "Michael Rustler"

git clone https://${GITHUB_PAT}@github.com/${TRAVIS_REPO_SLUG}.git docs
cd docs
cp -r ../docs/* ./
git add --all *
git commit -m "Update the book" || true
git push -q origin HEAD
