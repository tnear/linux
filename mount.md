# mount

`mount` - mount a filesystem

See also: [`mke2fs`](mke2fs.md), [`umount`](umount.md)

## Display all mounted partitions
```bash
$ mount
sysfs on /sys type sysfs (rw,nosuid,nodev,noexec,relatime)
proc on /proc type proc (rw,nosuid,nodev,noexec,relatime)
<truncated>
```

### Search for a mount directory
```bash
$ mount | grep <my_dir>
```

### `noexec`
The `noexec` flag prevents executing binaries in that mounted partition. However, simple workarounds exist.

## Mount flash drive
Assume there is a flash drive located at `/dev/flash_sdd`. This mounts that flash drive to an existing `/media/photos` directory.
```bash
$ mkdir /media/photos
$ mount /dev/flash_sdd /media/photos
```

## Common flags
- `-t`: type, ex: `mount -t tmpfs`, see [`tmpfs`](tmpfs.md)
- `--bind`: used for creating bind mounts
- `-o <opts>`: specify options, ex: `mount -o remount`

## Bind mount
A bind mount mounts one directory to another. They can be useful when working in `chroot` environments.

### `chroot` example
`chroot` limits directory access. However, it is common to need common directories such as `/bin` and `/lib64`. A bind mount can help.

```bash
# create directory in chroot location
$ mkdir -p /home/chroot/bin

# bind mount it to /bin
$ mount --bind /bin /home/chroot/bin

# set up chroot
$ chroot /home/chroot

# show that /bin is accessible through bind mount despite being in chroot
$ ls -l /
total 16
drwxr-xr-x 2 0 0  4096 Oct 29 21:47 bin
```

## Resources
- Bind mounts: https://www.baeldung.com/linux/bind-mounts
