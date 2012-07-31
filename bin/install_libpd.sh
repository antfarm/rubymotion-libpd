#!/bin/bash

SCRIPT_DIR=`dirname $0`
PROJECT_ROOT=`cd ${SCRIPT_DIR}/.. && pwd`

cd ${PROJECT_ROOT}/vendor
git clone https://github.com/libpd/pd-for-ios.git

cd pd-for-ios
git submodule init
git submodule update

echo "Patching 'libpd' for use with RubyMotion."
cd libpd
git apply ${PROJECT_ROOT}/vendor/libpd_patch.diff.txt