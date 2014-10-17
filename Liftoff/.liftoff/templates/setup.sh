#!/usr/bin/env bash

bundle install
pod install

#
# Setup Dominus and Quality submodules
#

git submodule add git@github.com:Legoless/Dominus.git
git submodule init
git submodule update

chmod +x ./Dominus/dominus.sh
./Dominus/Dominus.sh setup project
./Dominus/Dominus.sh setup travis
