#
# Ubuntu Dockerfile
#
# https://github.com/dockerfile/ubuntu
#

FROM ubuntu:12.10

RUN echo "deb http://archive.ubuntu.com/ubuntu quantal main universe multiverse" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y
