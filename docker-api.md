# Docker API

Docker API is used to manage images and containers. `podman` API is mostly a drop-in replacement for `docker`.

See also: [`docker`](docker.md), [`podman`](podman.md)

## Docker info
```bash
$ docker version
$ docker info
```

## Images

### List images
```bash
$ docker images      # older command form
$ docker image list  # newer command form
REPOSITORY  TAG     IMAGE ID  CREATED      SIZE
ubuntu      latest  4e2e4f88  3 days ago   64.2MB
nginx       1.19    9beeba24  2 weeks ago  133MB
```

### Remove images
```bash
# get image IDs
$ docker image list

# next, remove by ID
$ docker image rm 4e2e4f88

# use force flag (-f) to remove an image which is actively in use
# by a container. Note: this will also remove its containers
$ docker image rm -f 4e2e4f88
```

### Prune
Use `prune` to remove all unused images at once.
```bash
# note: this will prompt before deleting
$ docker image prune
```

## Containers

### List containers
```bash
# list currently running containers
$ docker ps              # older command form (more common)
$ docker container list  # newer command form

# list all containers
$ docker container list -a

# list all containers for an image
$ docker container list -a --filter ancestor="$image_name"

# custom formatting example: show container names
$ docker container list -a --format '{{.Names}}'
```

### Container size
Containers have two sizes, ex: `120MB (virtual 500MB)`

- `120MB`: writable layer (actual container changes)
- `virtual 500MB`: all image layers (shared)

For cleanup, focus on the first writable layer size first.

```bash
# show container size
$ docker container list -a --size
```

### Stop running a container
Use the container `stop` sub-command.

```bash
$ docker container stop my_container
```

Use `docker container container list -a` to check on its status.

### Copying files

```bash
# copy file into container using container name
$ docker cp /path/to/file.txt container_name:/path/in/container

# using checksum
$ docker cp /path/to/file.txt <checksum>:/path/in/container
```

## Exec
Use `exec` to run a new command inside a container that is already running.

```bash
# first, list containers to get an ID
$ docker ps

# run bash to get a shell into an existing container
$ docker exec -it <id> bash
```

## Docker run
`docker run` starts a container from an image.

Basic syntax: `docker run [flags] <image> [command]`

### Common flags
- `-it`: interactive terminal: creates shell, ex: `docker run alpine sh`
- `-d`: detached mode: runs container in background and returns to prompt
- `-v, --mount`: specify volume mount, see [below](docker-api.md#volumes)
- `--name`: assign container name instead of randomly generated
- `--rm`: remove container upon exit. Useful to avoid container accumulation
- `--replace`: if container with that name already exists, replace it
- `--privileged`: grant container root-level access to host machine
- `--user <user>`: specify user to run container

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

## History
`docker history` shows how an image was built. It shows the layer by layer history with the newest layers at the top.

```bash
$ docker history <image_id>
ID         CREATED BY                         SIZE
e69ea36db  bash -c #(nop) WORKDIR /tmp/app... 0B
<missing>  bash -c VER=$(curl -s htt...       231MB
<missing>  bash -c python3.12 -m pip inst...  437MB
<missing>  bash -c chown -R me /var/log...    679MB
```
