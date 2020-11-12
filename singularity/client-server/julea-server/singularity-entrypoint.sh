#!/bin/bash

#mkdir /singularity-mnt

echo "ENV SCRIPT"

. /julea/scripts/environment.sh

echo "ENV DONE"
echo "......."
echo "JULEA CONFIG START"

#Set environment script to .bashrc. So when exec is called with /bin/bash variables are set
#sed -i -e '$a. /julea/scripts/environment.sh' ~/.bashrc

#julea-config --user \
#  --object-servers="$(hostname):9876" --kv-servers="$(hostname):9876" --db-servers="$(hostname):9876" \
#  --object-backend=posix --object-component=server --object-path="/singularity-mnt/julea-$(id -u)/posix" \
#  --kv-backend=lmdb --kv-component=server --kv-path="/singularity-mnt/julea-$(id -u)/lmdb" \
#  --db-backend=sqlite --db-component=server --db-path="/singularity-mnt/julea-$(id -u)/sqlite"

julea-config --user \
  --object-servers="julea-server:9876" --kv-servers="julea-server:9876" --db-servers="julea-server:9876" \
  --object-backend=posix --object-component=server --object-path="/singularity-mnt/julea-$(id -u)/posix" \
  --kv-backend=lmdb --kv-component=server --kv-path="/singularity-mnt/julea-$(id -u)/lmdb" \
  --db-backend=sqlite --db-component=server --db-path="/singularity-mnt/julea-$(id -u)/sqlite"

echo "JULEA CONFIG DONE"
echo "....."
echo "STARTING SERVER"

#Tail Command is needed otherwise the container is not running after the setup.sh is loaded
#/etc/julea/scripts/setup.sh start && tail -f /dev/null
#julea-server --daemon --host "$(hostname)" --port "9876"
julea-server --daemon --host "julea-server" --port "9876"

#echo "STARTING SERVER DONE"

#ps -aux | grep julea

#cd /singularity-mnt

#make
#./hello-world
#make clean
