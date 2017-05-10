install:
	patch openjdk/8-jdk/alpine/Dockerfile 8-jdk/alpine/Dockerfile.patch

build: install
	docker build -t napnap75/rpi-openjdk-official:8-jdk-alpine docker/11.0/apache

push: build
	docker push napnap75/rpi-openjdk-official:8-jdk-alpine
  
