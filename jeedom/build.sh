#!/bin/bash

# Make sure the script stops after every error and print the command launched
set -ex

if [ "$1" == "latest" ]; then
  # Load the official source and update it for the arm processors
  if [ -d core ] ; then rm -fr core ; fi
  git clone -b stable https://github.com/jeedom/core
  cd core
  patch Dockerfile ../Dockerfile.patch
  cat Dockerfile
  
  # Workaround for the bug introduced on April 8th
  echo "[program:apache2]" >> install/OS_specific/Docker/supervisord.conf
  echo "command=/bin/bash -c \"rm -f /var/run/apache2/apache2.pid; source /etc/apache2/envvars && exec /usr/sbin/apache2 -DFOREGROUND\""  >> install/OS_specific/Docker/supervisord.conf

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
