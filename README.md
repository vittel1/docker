# docker

## Build image with dependencies for JULEA
```
cd docker-julea-base
docker build -t julea-base-image .
```

## Build image with configurations for JULEA

This image depends on the julea-base-image.
This image could be used to work with JULEA within the container.

```
cd docker-julea-config
docker build -t julea-config-image .
docker run -it -d --name julea-with-config julea-config-image
docker exec -ti julea-with-config /bin/bash
```

## Build image for compilation

Depends on the julea-with-config image.
Mount a directory into the container. 
By the exec-Command the Makefile is execute to build the files. 
As second parameter the name of the executable is needed to run the executable build by the Makefile.

```
cd docker-compile-example
docker build -t julea-compile .
docker run -it -d --name julea-compile -v ~/docker-compile-example/files/:/build julea-compile
docker exec -ti julea-compile /compile.sh /build hello-world
```
