# Dockerfile for binder
# Reference: https://mybinder.readthedocs.io/en/latest/dockerfile.html#preparing-your-dockerfile
# This file cloned from https://github.com/sagemath/sage-binder-env

FROM sagemath/sagemath:9.0

RUN sage -pip install jupyterlab

# Copy the contents of the repo in ${HOME}
COPY --chown=sage:sage . ${HOME}
