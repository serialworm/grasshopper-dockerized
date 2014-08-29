# DOCKER-VERSION 0.3.4

FROM ubuntu:14.04

ADD app /src/app
ADD bin /src/bin
ADD modules /src/modules
ADD manifests /src/manifests

RUN apt-get update
RUN apt-get install -y wget

RUN /src/bin/bootstrap_puppet.sh
RUN puppet apply --verbose --modulepath=/src/modules /src/manifests/container.pp