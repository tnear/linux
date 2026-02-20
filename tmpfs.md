# tmpfs

`tmpfs` - (temporary file system) a virtual memory filesystem

`tmpfs` allows the creation of file systems whose contents reside in virtual memory. Since the files on such file systems typically reside in RAM, file access is extremely fast. `tmpfs` can be used to create a RAM disk.

## Creation

```bash
cd /tmp
mkdir ramdisk # create directory to be the ram disk

sudo mount -t tmpfs -o size=1024m myramdisk ramdisk
```

```bash
# verify successful mount
mount | grep tmpfs

tmpfs on /run/user/0 type tmpfs (rw,nosuid,nodev,relatime,seclabel,size=210061588k,mode=700,inode64
```

## Performance
### Write performance

The ramdisk has about 1.7 GB/s of bandwidth:
```bash
# copy 100,000 blocks of size 4K (100K * 4K = 4000K = 4 MB)
dd if=/dev/zero of=/tmp/ramdisk/zero bs=4k count=100000
409600000 bytes (410 MB, 391 MiB) copied, 0.248093 s, 1.7 GB/s
```

A regular directory has less bandwidth (1.3 GB/s):
```bash
dd if=/dev/zero of=/tmp/regular/zero bs=4k count=100000
409600000 bytes (410 MB, 391 MiB) copied, 0.307224 s, 1.3 GB/s
```

### Read performance
```bash
dd if=/tmp/ramdisk/zero of=/dev/null bs=4K count=100000
409600000 bytes (410 MB, 391 MiB) copied, 0.117927 s, 3.5 GB/s
```

## unmount
Run `umount` when done.
```bash
sudo umount /tmp/ramdisk/
```

## Check type
Use `df -T` to determine if a directory is `tmpfs`.

```bash
$ df -T /dev/shm
Filesystem     Type  1K-blocks  Used Available Use% Mounted on
none           tmpfs   8088632     0   8088632   0% /dev/shm
```
