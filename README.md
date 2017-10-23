# docker-python

Nordstrom's Ubuntu-derived baseimage for Python. This repository defines an image that is intended to be used as a deployable runtime environment for Python applications and services.

We publish and actively maintain images for a single minor version of Python 3.x version at a time (today, that is `3.5`)[1].

[1] Yes, this means that we overwrite the tag value when updating. Maintaining fine-grained versioning in the `FROM` of a Dockerfile is a significant hassle (which would be necessary if we used immutable tags), so mutating the tag value is a compromise.
