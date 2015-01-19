#!/usr/bin/env bash

setup_bootstrap()
{
  #
  # Check if KZBootstrap exists in project and generate own user
  #

  ENVIRONMENTS=`find . -iname KZBEnvironments.plist | head -n1`

  echo $ENVIRONMENTS

  IFS=$'\n'

  if [[ -f $ENVIRONMENTS ]]; then
    BOOTSTRAP=$(dirname ${ENVIRONMENTS})

    echo $BOOTSTRAP

    touch "$BOOTSTRAP/KZBootstrapUserMacros.h"
  fi
}

#
# Setup Dominus and Quality submodules
#

echo 'Initializing modules...'

git submodule init
git submodule update

echo 'Preparing bootstrap...'

setup_bootstrap