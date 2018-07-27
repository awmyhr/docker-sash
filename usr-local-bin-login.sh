#!/bin/sh
#-- NOTE: Default to POSIX shell/mode. If more is needed check shell-script...
#==============================================================================
#:"""
#: .. program:: usr-local-bin-login.sh
#:    :synopsis: Create a new user and login as that user.
#:
#:    :copyright: 2018 awmyhr
#:    :license: Apache-2.0
#:
#: .. codeauthor:: awmyhr <awmyhr@gmail.com>
#:
#: TODO: CHANGEME
#:"""
#==============================================================================
#-- Variables which are meta for the script should be dunders (__varname__)
__version__='0.1.0-alpha' #: current version
__revised__='20180727-105116' #: date of most recent revision
__contact__='awmyhr <awmyhr@gmail.com>' #: primary contact for support/?'s
__synopsis__='Create a new user and login as that user.'
__description__="
Intended as an entrypoint to interactive, CLI-based Docker containers,
this script will create a user, grant the user sudo access, then su to
that user.
"
#------------------------------------------------------------------------------
#-- The following few variables should be relatively static over life of script
__author__='awmyhr <awmyhr@gmail.com>' #: coder(s) of script
__created__='2018-07-27'               #: date script originlly created
__copyright__='2018 awmyhr' #: Copyright short name
__license__='Apache-2.0'
__cononical_name__='usr-local-bin-login.sh' #: static name, *NOT* os.path.basename(sys.argv[0])
__project_name__='SysAdmin Shell'  #: name of overall project, if needed
__project_home__='https://github.com/awmyhr/docker-sash'  #: where to find source/documentation
__template_version__='1.0.0'             #: version of template file used
#-- We are not using this variable for now.
# shellcheck disable=2034
__docformat__='reStructuredText en'      #: attempted style for documentation
__basename__="${0}" #: name script run as
#==============================================================================
#-- Print help if requested.
if [ "${1}" = "-h" ] || [ "${1}" = "--help" ]; then
    printf '(%s)\n' "${__basename__}"
    printf '%s\n' "${__synopsis__}"
    printf '%s\n' "${__description__}"
    printf 'The following environment varialbes are used:\n'
    printf 'ADD_UNAME - user name to create (default)\n'
    printf 'ADD_UID   - UID to assign (1000)\n'
    printf 'ADD_GNAME - group name to create (default)\n'
    printf 'ADD_GID   - GID to assing (1000)\n'
    printf 'ADD_HOME  - home directory path (/home/default) \n\n'
    printf 'Created: %s  Contact: %s\n' "${__created__}" "${__contact__}"
    printf 'Revised: %s  Version: %s\n' "${__revised__}" "${__version__}"
    printf '%s, part of %s.\n' "${__cononical_name__}" "${__project_name__}"
    printf 'Project home: %s\n' "${__project_home__}"
    printf '(c) Copyright %s (License: %s)\n' "${__copyright__}" "${__license__}"
    printf 'By %s; based on template version %s.\n' "${__author__}" "${__template_version__}"
    exit 0
fi
#==============================================================================
#-- Check/set paramaters.

if [ "z${ADD_UNAME}" = 'z' ] ; then
    printf 'ADD_UNAME missing, defaulting to: default \n'
    ADD_UNAME='default'
fi
if [ "z${ADD_UID}" = 'z' ] ; then
    printf 'ADD_UID missing, defaulting to: 1000\n'
    ADD_UID='1000'
fi
if [ "z${ADD_GNAME}" = 'z' ] ; then
    printf 'ADD_GNAME missing, defaulting to: default\n'
    ADD_GNAME='default'
fi
if [ "z${ADD_GID}" = 'z' ] ; then
    printf 'ADD_GID missing, defaulting to: 1000\n'
    ADD_GID='1000'
fi
if [ "z${ADD_HOME}" = 'z' ] ; then
    printf 'ADD_HOME missing, defaulting to: /home/default\n'
    ADD_HOME='/home/default'
fi

