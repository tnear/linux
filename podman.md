# podman

`podman` - Simple management tool for pods, containers and images

Its cli is almost identical to [`docker`](docker.md).

## Images

```bash
# pull new image
sudo podman pull <url>

# list images
sudo podman image list

# remove image by id
sudo podman rmi <checksum>
```
