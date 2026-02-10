# mke2fs

`mke2fs` - create an ext2/ext3/ext4 file system

See also: [volumes](volumes.md), [`mount`](mount.md)

## Introduction
`mke2fs` formats a block device (disk, partition, or logical volume).

## Basic usage
```bash
# make ext4 filesystem using 'mkfs.ext4' wrapper
$ sudo mkfs.ext4 -q /dev/vg00/my_app
```

The `-q` (quiet) flag suppresses most output.

Path `/dev/vg00/my_app` is the path to the block device to format. In this example, it is the logical volume `vg00`.
