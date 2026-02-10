UMOUNT

umount - unmount filesystems

# Get FUSE mount point:
$ mount | grep fuse
/home/kali/Downloads/fuse-3.14.1/build/example/passthrough on /home/kali/Downloads/fuse-3.14.1

# Remove FUSE mount point (assume pwd is example/passthrough):
$ umount passthrough

---