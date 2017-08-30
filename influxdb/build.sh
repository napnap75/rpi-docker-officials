#!/bin/bash

# Make sure the script stops after an error
set -e

# Load the official source and update it for the arm processors
git clone https://github.com/influxdata/influxdata-docker
cd influxdata-docker/influxdb/$1
patch Dockerfile ../../../Dockerfile_influxdb.patch
sed -i.bak 's/amd64/linux_armhf/g' Dockerfile
cat Dockerfile

# Add QEmu to allow the image to be built and tested on x86 processors (especially Travis CI)
curl -L -o qemu-arm-static.tar.gz https://github.com/multiarch/qemu-user-static/releases/download/v2.6.0/qemu-arm-static.tar.gz \
  && tar zx -f qemu-arm-static.tar.gz

# Build the image
docker build -t napnap75/rpi-influxdb:$1 .
docker images
