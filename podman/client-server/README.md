# Podman Client-Server

## Server
```
podman build -t julea-server .
podman run -dt -p 9876:9876 --name julea-server localhost/julea-server
podman exec -ti julea-server /bin/bash
```

## Client

Change IP address to the local one in docker-entrypoint.sh.
It can not be 127.0.0.1.
```
ip addr
```

```
podman build -t julea-client .
podman run -it -d --name julea-client localhost/julea-client
podman exec -ti julea-client /bin/bash
```

or with volume

```
podman run -it -d --name julea-client -v ./files:/build/ localhost/julea-client
```
