#!/bin/bash

. /julea/scripts/environment.sh
spack find >> /workspace/results/spack.deps

cd ~
cat .config/julea/julea >> /workspace/results/julea.config
