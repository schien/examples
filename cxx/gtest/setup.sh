#!/bin/sh

# add googletest as a submodule in lib folder:
#   git submodule add https://github.com/google/googletest lib/googletest

git submodule init

if [ ! -d build ]; then
  mkdir build
fi

cd build
cmake ..
