DOCKER_NAME=hashicraft/velocity
DOCKER_VERSION=v3.0.0

build:
	docker build -t ${DOCKER_NAME}:${DOCKER_VERSION} .

build_and_push: build
	docker push ${DOCKER_NAME}:${DOCKER_VERSION}
