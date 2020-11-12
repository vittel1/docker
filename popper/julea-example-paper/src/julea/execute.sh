#!/bin/bash

ps -aux

. /julea/scripts/environment.sh

cd src/julea/
make
./hello-world
make clean
