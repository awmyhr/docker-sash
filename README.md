# SysAdmin Shell _(docker-sash)_

> Docker container full of useful system administrator's tools.

## Table of Contents

- [Install](#install)
- [Usage](#usage)
- [Flavors](#flavors)
- [Maintainers](#maintainers)
- [Contribute](#contribute)
- [License](#license)

Inspiration taken in part from:

- [dockersh](https://github.com/sleeepyjack/dockersh)

Creates a standardized, 'safe' work environment inside a container. User
details inside the container (such as UID/GID, shell, etc) are configurable
at container creation.

All flavors have a variety of script languages, shells, utilities, and text
editors available (though noteably not Emacs, as it is very heavy.
However, Emacs-like mg is). I do actively try to maintain feature parity
between the flavors.

## Install

```
```

## Usage

Build the image with 'image-build.sh'. By default, a CentOS based image will be
created as 'sash-centos'. A different flavor can be used by passing it as a
paramater, as in 'image-build.sh rhel'. This is done by changing which file
the 'Dockerfile' symlink points to.

Running a throw-away continer can be done with 'image-run.sh'. This will run
using the current users UID, GID, shell, and home directory. Examine the
script to learn how to run with different params.

Executing 'container-build.sh' will run the above container detached. In
this case it will be siting idle. Running 'container-run.sh' will open a
session inside the container. Again, examine the scripts for an idea of
what Docker commands to use for a more customized experience.

## Flavors

### CentOS 7

This is intended as a stable/LTS container. The image is sourced from the
official image on Docker Hub. Packages are sourced first from the official
CentOS repositories (base, updates, and extras), then from EPEL.

Other sources (i.e., Python pip install, other 3rd party repos) are used
very judiciously, and only when the utility outweighs the desire to keep
the system 'pure.'

Image size is just over 800MB.

### Fedora

This is intended as a current version container. The image is sourced from the
official image on Docker Hub. Packages are sourced first from the official
Fedora repositories (base and updates), then from 3rd party repos,
falling back to other package managers (such as pip) when needed.

Image size is about 1.25GB.

### RHEL 7

*NOTE: This flavor has special, specific requirements!*

*NOTE: This flavor is NOT supported or endorsed by Red Hat in any way!*

A Red Hat Enterprise Linux 7 version of the CentOS 7 flavor. The image is
sourced from the official Red Hat registry, and has a very strict set of
requirements:

* The host system *must* be RHEL 7 with valid subscriptions/entitlements.

* The host system *must* be using Docker from the RHEL 7 Server Extras repo.

* The host system *must* be able to present the following repositories:
  
  * RHEL 7 Server (typically named rhel-7-server-rpms)

  * RHEL 7 Server Ansible (typically named rhel-7-server-ansible-2-rpms)

  * EPEL 7 Server (must have 'epel' in name string)

If the EPEL repos are not available, the user will need to remove the related
lines from Dockerfile.rhel. Alternatively, one could add the EPEL repo file,
however the idea of this flavor is content is controlled by a Satellite Server's
Content Views and Lifecycles.

As with CentOS, other sources (i.e., Python pip install) are used very
judiciously, and only when the utility outweighs the desire to keep the
system managed and 'pure.'

Image size is just over 800MB.

## Maintainers

- awmyhr <awmyhr@gmail.com>

## Contribute

PRs accepted.

## License

Apache-2.0 (c) 2018 awmyhr