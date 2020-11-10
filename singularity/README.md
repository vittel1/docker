# Singularity

## Commands
```
singularity build julea.sif julea.def
mkdir my_overlay
singularity shell --overlay my_overlay/ julea.sif
```

The entrypoint.sh is just execute with this command (not with shell):
```
singularity run julea.sif
```

## Notes
Environment-Setup:
 - Make sure to run the /julea/scripts/environment.sh to set variables

Overlay:
 - The container from DockerHub is read-only. Therefore a overlay is needed.
 - https://sylabs.io/guides/3.0/user-guide/persistent_overlays.html

Julea-Config with /tmp:
 - /tmp will be automatically bind by singularity. 
 - Therefore all change would be written to the host system
 - https://sylabs.io/guides/3.6/user-guide/bind_paths_and_mounts.html#overview

Julea-Config Hostname:
 - With the variable $hostname in config command, the hostname of the host system is used.
 
