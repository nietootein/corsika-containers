# Corsika and sim_telarray docker images for IACT detectors
Disclaimer: this is an **experimental repository** NOT meant for production

# Requirements
* [Docker](https://docs.docker.com/engine/install/)

# Installation

Clone the repository:

`$ git clone https://github.com/nietootein/corsika-containers.git`

Download the following files (contain closed-source code) and place them into `corsika-containers/assets`:

* [corsika-76300.tar.gz](http://sagan.gae.ucm.es/~nieto/cta/sims/software/corsika-76300.tar.gz)
* [corsika-76300f.tar.gz](http://sagan.gae.ucm.es/~nieto/cta/sims/software/corsika-76300f.tar.gz)
* [corsika7.6_simtelarray_2019-05-29_2020-04-30.tar.gz](http://sagan.gae.ucm.es/~nieto/cta/sims/software/corsika7.6_simtelarray_2019-05-29_2020-04-30.tar.gz)

# Building images

Building and image from a dockerfile `mydockerfile`

`$ cd corsika-containers`

`$ docker build -t <my_tag>:<my_version> -f dockerfiles/mydockerfile .`

For example:

`$ docker build -t c-alp:0.1 -f dockerfiles/dockerfile-c-alpine .` will build an image from alpine linux containing a working corsika (version 76300).

# Running a container from a built image

By now the execution of corsika or sim_telarray is run in interactive mode. To run a container:

`$ docker run -it --name <my_name> <my_tag>:<my_version>`

For example:

`$ docker run -it --name c-alp-test c-alp:0.1`

The corsika or sim_telarray code can then be found in `/home/`.

# Available images


| Docker file | Distro | corsika | fluorescence | sim_telarray |
|---|---|---|---|---|
| dockerfile-c-alpine | Alpine 3.11 | 76300 | no | no|
| dockerfile-cf-alpine | Alpine 3.11 | 76300 | yes | no|
| dockerfile-cs-alpine | Alpine 3.11 | 76300 | n | 2019-05-29 |
| dockerfile-c-sl | SL7 | 76300 | no | no |
| dockerfile-cf-sl | SL7 | 76300 | yes | no |
| dockerfile-cs-sl | SL7 | 76300 | n | 2019-05-29 |
| dockerfile-c-ubuntu | Ubuntu 20.04 | 76300 | no | no |
| dockerfile-cf-ubuntu | Ubuntu 20.04 | 76300 | yes | no |
| dockerfile-cs-ubuntu | Ubuntu 20.04 | 76300 | n | 2019-05-29 |

# Some references

* [corsika](https://www.ikp.kit.edu/corsika/)
* [sim_telarray](https://www.mpi-hd.mpg.de/hfm/~bernlohr/sim_telarray/)

# Author
D. Nieto (d.nieto@ucm.es)
