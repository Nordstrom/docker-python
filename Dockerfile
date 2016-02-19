FROM nordstrom/baseimage-ubuntu:14.04
MAINTAINER Innovation Platform Team "invcldtm@nordstrom.com"

RUN apt-get update -qy \
 && apt-get install -qy \
      python2.7 \
      python-pip
