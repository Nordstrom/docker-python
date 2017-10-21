# docker-python

Nordstrom's Ubuntu-derived baseimage for Python. This repository defines an image that is intended to be used as a deployable runtime environment for Python applications and services.

We intend to publish an image tag for one minor version of Python 2.x[1]. In the future we may additionally publish an image for Python 3.x. We will probably only actively maintain images for a single minor version of each major Python version at a time (so far, just `2.7`).

[1] Yes, this means that we overwrite the tag value when updating. Maintaining fine-grained versioning in the `FROM` of a Dockerfile is a significant hassle (which would be necessary if we used immutable tags), so mutating the tag value is a compromise.
