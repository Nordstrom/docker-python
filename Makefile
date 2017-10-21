IMAGE_REGISTRY := quay.io/nordstrom
IMAGE_NAME := python
PYTHON_VERSION := 2.7
IMAGE_TAG := $(PYTHON_VERSION)

ifdef http_proxy
BUILD_ARGS += --build-arg="http_proxy=$(http_proxy)"
BUILD_ARGS += --build-arg="https_proxy=$(http_proxy)"
endif


.PHONY: build/image tag/image push/image
push/image: tag/image
	docker push $(IMAGE_REGISTRY)/$(IMAGE_NAME):$(IMAGE_TAG)

.PHONY: build/image tag/image push/image
tag/image: build/image
	docker tag $(IMAGE_NAME) $(IMAGE_REGISTRY)/$(IMAGE_NAME):$(IMAGE_TAG)

.PHONY: build/image tag/image push/image
build/image: Dockerfile
	docker build -t $(IMAGE_NAME) $(BUILD_ARGS) .
