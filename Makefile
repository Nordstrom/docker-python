IMAGE_REGISTRY := quay.io/nordstrom
IMAGE_NAME := python
PYTHON_VERSION := 3.5.2
IMAGE_TAG := $(PYTHON_VERSION)

ifdef http_proxy
BUILD_ARGS += --build-arg="http_proxy=$(http_proxy)"
BUILD_ARGS += --build-arg="https_proxy=$(http_proxy)"
endif


.PHONY: build/image tag/image push/image
push/image: tag/image
	docker push $(IMAGE_REGISTRY)/$(IMAGE_NAME):$(IMAGE_TAG)
	docker push $(IMAGE_REGISTRY)/$(IMAGE_NAME):3.5
	docker push $(IMAGE_REGISTRY)/$(IMAGE_NAME):3

.PHONY: build/image tag/image push/image
tag/image: build/image
	docker tag $(IMAGE_NAME) $(IMAGE_REGISTRY)/$(IMAGE_NAME):$(IMAGE_TAG)
	docker tag $(IMAGE_NAME) $(IMAGE_REGISTRY)/$(IMAGE_NAME):3.5
	docker tag $(IMAGE_NAME) $(IMAGE_REGISTRY)/$(IMAGE_NAME):3

.PHONY: build/image tag/image push/image
build/image: Dockerfile
	docker build -t $(IMAGE_NAME) $(BUILD_ARGS) .
