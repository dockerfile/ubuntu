FROM ubuntu:latest

MAINTAINER "Nilesh Patoliya <nilpatoliya@yahoo.com>"

ENV TERRAFORM_VERSION=v0.15.3

ENV USER root
RUN mkdir /usr/local/terraform
RUN apt-get update -y
RUN apt-get install build-essential git wget -y
RUN apt-get install unzip -y
RUN wget https://releases.hashicorp.com/terraform/0.15.4/terraform_0.15.4_linux_amd64.zip
RUN unzip ./terraform_0.15.4_linux_amd64.zip
RUN mv terraform /usr/local/bin/
RUN terraform --version
