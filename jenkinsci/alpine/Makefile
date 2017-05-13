install:
	patch docker/alpine/Dockerfile alpine/Dockerfile.patch

build: install
	docker build -t napnap75/rpi-jenkinsci-official:alpine docker/alpine

push: build
	docker push napnap75/rpi-jenkinsci-official:alpine
  
