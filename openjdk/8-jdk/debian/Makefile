install:
	patch openjdk/8-jdk/Dockerfile 8-jdk/debian/Dockerfile.patch

build: install
	docker build -t napnap75/rpi-openjdk-official:8-jdk openjdk/8-jdk

push: build
	docker push napnap75/rpi-openjdk-official:8-jdk
