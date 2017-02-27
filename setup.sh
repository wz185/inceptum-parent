#!/bin/bash

if [ ! -e lerna.json ]; then
    echo "Please execute this script from the inceptum-parent folder"
    exit 1
fi

cd packages;
if [ ! -d  inceptum ]; then
    git clone git@github.com:hipagesgroup/inceptum.git
fi

if [ ! -d  inceptum-sample ]; then
   git clone git@github.com:hipagesgroup/inceptum-sample.git
fi

cd ..

if [ ! -x lerna ]; then
    echo "Installing lerna"
    npm install --global lerna@^2.0.0-beta.0
fi

lerna bootstrap