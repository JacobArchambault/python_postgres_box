FROM docker.io/jacobarchambault/python_box:latest 

ARG NAME=python_postgres_box

LABEL name="$NAME" \
      summary="Fedora toolbox container" \
      maintainer="Jacob Archambault"
# Install packages


RUN dnf -y upgrade \
  && dnf -y install \
  postgresql-16.1 --nodocs --setopt install_weak_deps=False \
  && dnf clean all

