image_name := python
image_registry := quay.io/nordstrom
image_release := 2.7

ifdef http_proxy
build_args := --build-arg="http_proxy=$(http_proxy)"
build_args += --build-arg="https_proxy=$(http_proxy)"
endif

.PHONY: build/image tag/image push/image

build/image: Dockerfile
	docker build -t $(image_name) $(build_args) .

tag/image: build/image
	docker tag $(image_name) $(image_registry)/$(image_name):$(image_release)

push/image: tag/image
	docker push $(image_registry)/$(image_name):$(image_release)
