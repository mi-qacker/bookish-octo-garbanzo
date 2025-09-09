BASE_IMAGE = node:22.19.0-bookworm
IMAGE = bookish-octo-garbanzo:latest
APP_PORT = 8080

build:
	docker build -t $(IMAGE) .

run: build
	docker run \
		-e PORT=$(APP_PORT) \
		-p $(APP_PORT):$(APP_PORT) \
		$(IMAGE)

run-dev:
	docker run \
		-e PORT=$(APP_PORT) \
		-p $(APP_PORT):$(APP_PORT) \
		-v $(shell pwd):/usr/src/app \
		--workdir /usr/src/app \
		-it $(BASE_IMAGE) bash
