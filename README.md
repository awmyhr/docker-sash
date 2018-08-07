# SysAdmin Shell _(docker-sash)_

> Docker container full of useful system administrator's tools.

## Table of Contents

- [Install](#install)
- [Usage](#usage)
- [Maintainers](#maintainers)
- [Contribute](#contribute)
- [License](#license)

Inspiration taken in part from:

- [dockersh](https://github.com/sleeepyjack/dockersh)

Creates a standardized, 'safe' work environment inside a container. User
details inside the container (such as UID/GID, shell, etc) are configurable
at container creation.

## Install

```
```

## Usage

Build the image with 'image-build.sh'. By default, a CentOS based image will be
created as 'sash-centos'. A different base can be used by passing it as a
paramater, as in 'image-build.sh rhel'. This is done my changing which file
the 'Dockerfile' symlink points to.

Running a throw-away continer can be done with 'image-run.sh'. This will run
using the current users UID, GID, shell, and home directory. Examine the
script to learn how to run with different params.

Executing 'container-build.sh' will make the above container persistent. In
this case it will be siting idle. Running 'container-run.sh' will open a
session inside the container. Again, examine the scripts for an idea of
what Docker commands to use for a more customized experience.

## Maintainers

- awmyhr <awmyhr@gmail.com>

## Contribute

PRs accepted.

## License

Apache-2.0 (c) 2018 awmyhr