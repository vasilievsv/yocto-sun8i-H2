#!/bin/bash

source ./layers/poky/oe-init-build-env ./build/

MACHINE=orange-pi-zero BB_NUMBER_THREADS="8" PARALLEL_MAKE="-j 2"  bitbake core-image-minimal
