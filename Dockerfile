FROM quay.io/nordstrom/baseimage-ubuntu:16.04
MAINTAINER Store Modernization Platform Team "invcldtm@nordstrom.com"

RUN apt-get update -qy \
 && apt-get install -qy \
      python2.7 \
      python-pip
