# losetup

`losetup` - set up and control loop devices

See also: [`mke2fs`](mke2fs.md)

## Loop devices

Imagine a disk image: a single file, like `backup.img` or `ubuntu.iso`, that contains a complete filesystem inside it. You want to open it and look at the files inside.

The problem: Linux's mounting tools only know how to open *disks* (like `/dev/sda1`), not *files*. A loop device is the bridge between the two.

A loop device makes a regular file *pretend to be a disk*.

## Basic usage

This creates a test disk, uses it, and cleans up.

```bash
# 1. Make an empty 50 MB file
dd if=/dev/zero of=mydisk.img bs=1M count=50

# 2. Turn the file into a "disk" (this prints a name like /dev/loop0)
sudo losetup -f --show mydisk.img

# 3. Put a filesystem on it
sudo mkfs.ext4 /dev/loop0

# 4. Mount it like any other disk
mkdir mnt
sudo mount /dev/loop0 mnt

# 5. Use it
sudo sh -c 'echo "hello from a fake disk" > mnt/hello.txt'
cat mnt/hello.txt

# 6. Clean up
sudo umount mnt
sudo losetup -d /dev/loop0
```
