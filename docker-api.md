# Docker API

Docker API is used to manage images and containers.

See also: [`docker`](docker.md), [`podman`](podman.md)

## Docker info
```bash
$ docker version
$ docker info
```

## Images

```bash
# list images
$ docker images
REPOSITORY  TAG     IMAGE ID  CREATED      SIZE
ubuntu      latest  4e2e4f88  3 days ago   64.2MB
nginx       1.19    9beeba24  2 weeks ago  133MB
```

## Containers

```bash
# list currently running containers
$ docker ps

# list all containers
$ docker ps -a

# list all containers for an image
$ sudo docker ps -a --filter ancestor="$image_name"

# custom formatting example: show container names
$ sudo podman ps -a --format '{{.Names}}'
```

### Container size
Containers have two sizes, ex: `120MB (virtual 500MB)`

- `120MB`: writable layer (actual container changes)
- `virtual 500 MB`: all image layers (shared)

For cleanup, focus on the first number first.

```bash
# show container size
$ docker ps -a --size
```

### Stop running a container
Use the container `stop` sub-command.

```bash
$ docker container stop my_container
```

Use `docker container ps -a` to check on its status.

### Copying files

```bash
# copy file into container using container name
$ sudo docker cp /path/to/file.txt container_name:/path/in/container

# using checksum
$ sudo docker cp /path/to/file.txt <checksum>:/path/in/container
```

## Mount points

### Volumes
- `-d`: detached
- `-v, --mount`: mount volume (prefer `--mount` over `-v` for clarity.)
- `mydata`: name of volume on host
- `/app/data`: path inside container

If two containers use the same named volume, they will see the same data. This can introduce race conditions if both are writing to it at the same time.

```bash
$ docker run -d --mount type=volume,src=mydata,dst=/app/data image_a
$ docker run -d --mount type=volume,src=mydata,dst=/app/data image_b
```

### Bind mounts
```bash
# mount /home/user/myapp on host to /app on container
$ docker run --mount type=bind,src=/home/user/myapp,dst=/app image_a
```

### Syntax comparison
Volumes use a name (no slash), while bind mounts use a path.

```bash
# Volume: left side is a name (mydata)
$ docker run --mount type=volume,src=mydata,dst=/app/data myimage

# Bind mount: left side is a path (starts with / or ./)
$ docker run --mount type=bind,src=/home/user/myapp,dst=/app myimage
```
