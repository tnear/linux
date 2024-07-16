MOUNT

mount - mount a filesystem

# Display all mounted partitions:
$ mount
sysfs on /sys type sysfs (rw,nosuid,nodev,noexec,relatime)
proc on /proc type proc (rw,nosuid,nodev,noexec,relatime)
<truncated>

# Mount flash drive (assume /dev/flash_sdd) to existing /media/photos directory:
$ mkdir /media/photos
$ mount /dev/flash_sdd /media/photos

## Flags
-t = type, ex: mount -t tmpfs

---