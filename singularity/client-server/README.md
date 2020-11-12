# Singularity Commands

## Server
Add hostname to /etc/hosts

```
singularity build --fakeroot julea-server.sif Singularity
singularity instance start --bind singularity-mnt/:/singularity-mnt --hostname julea-server julea-server.sif julea-server
```

## Client

```
singularity build --fakeroot julea-client.sif Singularity
singularity instance start --bind singularity-mnt/:/singularity-mnt julea-client.sif julea-client
singularity shell instance://julea-client
```
