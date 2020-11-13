#!/bin/bash


. /julea/scripts/environment.sh

cd src/julea/

start=`date +%s`

make
./hello-world
make clean

end=`date +%s`
runtime=$((end-start))
echo $runtime >> /workspace/results/runtime.txt
