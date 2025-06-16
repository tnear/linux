# podman

`podman` - Simple management tool for pods, containers and images

Its cli is almost identical to [`docker`](docker.md).

## Images

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
