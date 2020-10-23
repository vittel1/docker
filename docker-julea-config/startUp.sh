#!/bin/bash

path=$1

. $path/scripts/environment.sh

julea-config --user \
  --object-servers="$(hostname)" --kv-servers="$(hostname)" --db-servers="$(hostname)" \
  --object-backend=posix --object-component=server --object-path="/tmp/julea-$(id -u)/posix" \
  --kv-backend=lmdb --kv-component=server --kv-path="/tmp/julea-$(id -u)/lmdb" \
  --db-backend=sqlite --db-component=server --db-path="/tmp/julea-$(id -u)/sqlite"

#Set environment script to .bashrc. So when exec is called with /bin/bash variables are set
sed -i -e '$a. '"$path"'/scripts/environment.sh' ~/.bashrc

#Tail Command is needed otherwise the container is not running after the setup.sh is loaded
$path/scripts/setup.sh start && tail -f /dev/null
