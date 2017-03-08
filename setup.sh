#!/bin/bash

if [ ! -e lerna.json ]; then
    echo "Please execute this script from the inceptum-parent folder"
    exit 1
fi

if [ ! -d packages ]; then
    mkdir packages
fi

cd packages;
if [ ! -d inceptum ]; then
    git clone git@github.com:hipages/inceptum.git
fi

if [ ! -d eslint-config-inceptum ]; then
   git clone git@github.com:hipages/eslint-config-inceptum.git
fi

if [ ! -d swagger-inceptum-skeleton ]; then
   git clone git@github.com:hipages/swagger-inceptum-skeleton.git
fi

cd ..

if ! which lerna > /dev/null; then
    echo "Installing lerna"
    npm install --global lerna@^2.0.0-beta.0
fi

lerna bootstrap
