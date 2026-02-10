# umount

`umount` - unmount filesystems

See also: [`mount`](mount.md)

## FUSE example
```bash
# get FUSE mount point
$ mount | grep fuse
/home/user/Downloads/fuse-3.14.1/build/example/passthrough on /home/user/Downloads/fuse-3.14.1

# remove FUSE mount point (assume pwd is example/passthrough)
$ umount passthrough
```
