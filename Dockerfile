FROM quay.io/nordstrom/baseimage-ubuntu:16.04
MAINTAINER Nordstrom Kubernetes Platform Team "techk8s@nordstrom.com"

USER root

RUN apt-get update -qy \
 && apt-get install -qy \
      python2.7 \
      python-pip \
 && pip install --upgrade pip

USER ubuntu
