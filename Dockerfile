FROM quay.io/nordstrom/baseimage-alpine:3.4
MAINTAINER Nordstrom Kubernetes Platform Team "techk8s@nordstrom.com"

RUN apk add --update \
      python \
      py-pip \
 && pip install --upgrade pip \
 && rm -rf /var/cache/apk/*
