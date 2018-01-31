#!/bin/bash

# Make sure the script stops after every error and print the command launched
set -ex

if [ "$1" == "latest" ]; then
  # Load the official source and update it for the arm processors
  if [ -d core ] ; then rm -fr core ; fi
  git clone https://github.com/jeedom/core
  cd core
  patch Dockerfile ../Dockerfile.patch
  cat Dockerfile

  # Add QEmu to allow the image to be built and tested on x86 processors (especially Travis CI)
  curl -L -o qemu-arm-static.tar.gz https://github.com/multiarch/qemu-user-static/releases/download/v2.6.0/qemu-arm-static.tar.gz \
    && tar zx -f qemu-arm-static.tar.gz

  # Build the image
  docker build -t napnap75/rpi-jeedom:latest .
else
  cd $1
  
  # Build the image
  docker build -t napnap75/rpi-jeedom:$1 .
fi

docker images
