## Ubuntu Dockerfile


This repository contains **Dockerfile** of [Ubuntu](http://www.ubuntu.com/) for [Docker](https://www.docker.io/)'s [trusted build](https://registry.hub.docker.com/u/dockerfile/ubuntu/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).


### Installation

1. Install [Docker](https://www.docker.io/).

2. Download [trusted build](https://registry.hub.docker.com/u/dockerfile/ubuntu/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull dockerfile/ubuntu`

   (alternatively, you can build an image from Dockerfile: `docker build -t="dockerfile/ubuntu" github.com/dockerfile/ubuntu`)


### Usage

    docker run -it --rm dockerfile/ubuntu
