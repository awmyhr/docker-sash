
[//]: # (Revised: 2018-07-20; Created: 2016-09-30; Author: awmyhr <awmyhr@gmail.com>)

# Change Log
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/).
This project tries to adhere to [Semantic Versioning](http://semver.org/),
however individual files generally use date versioning.

---

## TODO
- wrapper script which provides configurability, does all the building/running,
  and can be used as a login shell
- more flavors (Alpine, Ubuntu, etc)
- installation/updating support
- improved documentation

---

## [Unreleased]
### Added

### Changed

### Deprecated

### Removed

### Fixed

### Security

---

## [1.1.0] - 2018-08-09 (awmyhr)
### Added
- dockerignore file
- flavor-specific documentation added to README.md
- Microsoft repo and PowerShell install for centos
- flavor: Fedora

### Changed
- package updates for centos and rhel
- container hostname now is prefixed with the host's hostname

### Deprecated

### Removed
- containers will not install ansible-docs

### Fixed
- spelling and wording tweaks

### Security

---

## [1.0.0] - 2018-08-07 (awmyhr)
### Added
- basic project files
- initial image flavors (CentOS and RHEL)
- container login script
- example scriptlets for building and running

---