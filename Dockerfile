#
# Ubuntu Dockerfile
#
# https://github.com/dockerfile/ubuntu
#

# Pull base image.
FROM ubuntu:12.10

# Update OS.
RUN echo "deb http://archive.ubuntu.com/ubuntu quantal main universe multiverse" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

# Install basic packages.
RUN apt-get install -y curl git-core htop wget

# Add files.
ADD root/.bash_profile /root/.bash_profile
ADD root/.bashrc /root/.bashrc
ADD root/scripts /root/scripts
ADD rm /root/.profile

# Set working directory.
WORKDIR /root
