# Singularity Commands

## Client
```
singularity build --fakeroot juleaclient.sif Singularity
singularity instance start --bind singularity-mnt/:/singularity-mnt juleaclient.sif juleaclient
singularity shell instance://juleaclient
```

## Server
Add hostname to /etc/hosts!
```
singularity build --fakeroot juleaserver.sif Singularity
singularity instance start --bind singularity-mnt/:/singularity-mnt --hostname julea-server juleaserver.sif julea
```
