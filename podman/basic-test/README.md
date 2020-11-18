# Podman

## Workflow for running a basic images
```
podman build -t julea-basic .
podman run -it -d --name julea-basic localhost/julea-basic
podman ps -a
podman exec -ti julea-basic /bin/bash
```

Try with volume
```
podman run -it -d --name julea-basic -v ./files/:/build localhost/julea-basic
```
