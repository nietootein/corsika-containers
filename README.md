# Corsika and sim_telarray docker and singularity images for IACT detectors
Disclaimer: this is an **experimental repository** NOT meant for production

# Requirements

* [Singularity](https://sylabs.io/guides/3.5/admin-guide/installation.html) or [Docker](https://docs.docker.com/engine/install/)

# Installation

Just clone the repository:

`$ git clone https://github.com/nietootein/corsika-containers.git`

# Usage

## With Docker

### Building images

Building and image from a dockerfile `mydockerfile`

`$ cd corsika-containers`

`$ docker build -t <my_tag>:<my_version> -f dockerfiles/mydockerfile .`

For example:

`$ docker build --build-arg ASSETS_PASSWORD=<assets password> -t c-alp:0.1 -f dockerfiles/dockerfile-c-alpine .` will build an image from alpine linux containing a working corsika (version 76300).

Inquires about the password should be addressed to the author. 

### Running a container from a built image

By now the execution of corsika or sim_telarray is run in interactive mode. To run a container:

`$ docker run -it --name <my_name> <my_tag>:<my_version>`

For example:

`$ docker run -it --name c-alp-test c-alp:0.1`

The `corsika` or `sim_telarray` code can then be found in `/opt/corsika` or `/opt/corsika_simtelarray` respectively.

## With Singularity

Building and image from a Singularity recipe `myrecipe`

`$ cd corsika-containers`

`$ singularity build --fakeroot <myimage> <myrecipe>`

For example:

`$ singularity build --fakeroot cs-alpine.simg singularity/singularity-cs-alpine`

## Available images

| Distro | corsika | fluorescence | sim_telarray | Docker image | Docker file | Singularity image | Singularity recipe |
|---|---|---|---|---|---|---|---|
| Alpine 3.11 | 76300 | no | no | [v0.1](http://sagan.gae.ucm.es/~nieto/cta/sims/software/images/c-alpine_v0.1.tar.gz) | dockerfile-c-alpine |
| Alpine 3.11 | 76300 | yes | no |  [v0.1](http://sagan.gae.ucm.es/~nieto/cta/sims/software/images/cf-alpine_v0.1.tar.gz) | dockerfile-cf-alpine | 
| dockerfile-cs-alpine | Alpine 3.11 | 76300 | n | 2019-05-29 | [v0.1](http://sagan.gae.ucm.es/~nieto/cta/sims/software/images/cs-alpine_v0.1.tar.gz) |
| dockerfile-c-sl | SL7 | 76300 | no | no | [v0.1](http://sagan.gae.ucm.es/~nieto/cta/sims/software/images/c-sl_v0.1.tar.gz) |
| dockerfile-cf-sl | SL7 | 76300 | yes | no | [v0.1](http://sagan.gae.ucm.es/~nieto/cta/sims/software/images/cf-sl_v0.1.tar.gz) |
| dockerfile-cs-sl | SL7 | 76300 | n | 2019-05-29 | [v0.1](http://sagan.gae.ucm.es/~nieto/cta/sims/software/images/cs-sl_v0.1.tar.gz) |
| dockerfile-c-ubuntu | Ubuntu 20.04 | 76300 | no | no | [v0.1](http://sagan.gae.ucm.es/~nieto/cta/sims/software/images/c-ubuntu_v0.1.tar.gz) |
| dockerfile-cf-ubuntu | Ubuntu 20.04 | 76300 | yes | no | [v0.1](http://sagan.gae.ucm.es/~nieto/cta/sims/software/images/cf-ubuntu_v0.1.tar.gz) |
| dockerfile-cs-ubuntu | Ubuntu 20.04 | 76300 | n | 2019-05-29 | [v0.1](http://sagan.gae.ucm.es/~nieto/cta/sims/software/images/cs-ubuntu_v0.1.tar.gz) |

# Some references

* [corsika](https://www.ikp.kit.edu/corsika/)
* [sim_telarray](https://www.mpi-hd.mpg.de/hfm/~bernlohr/sim_telarray/)
* [Cherenkov Telescope Array](https://www.cta-observatory.org)

# Author
D. Nieto (d.nieto@ucm.es)
