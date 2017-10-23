FROM quay.io/nordstrom/baseimage-ubuntu:16.04
MAINTAINER Nordstrom Kubernetes Platform Team "techk8s@nordstrom.com"

USER root

RUN apt-get update -qy \
 && apt-get install -qy \
      python3 \
      python3-pip \
      python3-setuptools \
 && pip3 install --upgrade pip

USER nordstrom
