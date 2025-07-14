# podman

`podman` - Simple management tool for pods, containers and images

Its cli is almost identical to [`docker`](docker.md).

## Images

An **image** is a blueprint that contains everything needed to run an application (code, libraries, environment variables, etc.). The image is immutable.

```bash
# pull new image
sudo podman pull <url>

# list images (including their checksum)
sudo podman image list

# remove image by id
sudo podman rmi <checksum>

# -f to force remove
sudo podman rmi -f <checksum>
```

## Containers
A **container** is an instance of an *image*. One image can have many containers.

### Get all containers for an image
The `-a` flag gets all containers (including running and stopped).
```bash
# if you have the image name:
sudo podman ps -a --filter ancestor="$image_name"
```

### Remove all containers from an image
Two steps is preferred over `rm -f`.

The `-q` flag is for *quiet*, meaning only show the container ID.

```bash
sudo podman stop $(sudo podman ps -q --filter ancestor="$image_name")
sudo podman rm $(sudo podman ps -aq --filter ancestor="$image_name")
```

### Copy file into container

```bash
# using container name
sudo podman cp /path/to/file.txt container_name:/path/in/container

# using checksum
sudo podman cp /path/to/file.txt <checksum>:/path/in/container
```
