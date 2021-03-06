#!/bin/bash

. /julea/scripts/environment.sh

#Set environment script to .bashrc. So when exec is called with /bin/bash variables are set
sed -i -e '$a. /julea/scripts/environment.sh' ~/.bashrc

#MIT IP sollte es gehen
julea-config --user \
  --object-servers="julea-server:9876" --kv-servers="julea-server:9876" --db-servers="julea-server:9876" \
  --object-backend=posix --object-component=server --object-path="/etc/julea-$(id -u)/posix" \
  --kv-backend=lmdb --kv-component=server --kv-path="/etc/julea-$(id -u)/lmdb" \
  --db-backend=sqlite --db-component=server --db-path="/etc/julea-$(id -u)/sqlite"

ps -aux && tail -f /dev/null
