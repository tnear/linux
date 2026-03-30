# fdisk

`fdisk` - manipulate disk partition table

`fdisk` is a low-level utility to create, delete, and modify partitions on a disk.

## List permissions

This is the most common `fdisk` usage.

```bash
$ sudo fdisk -l

Disk /dev/sda: 2 TiB, 2199023255552 bytes, 4294967296 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 1048576 bytes

Device       Start        End    Sectors  Size Type
/dev/sda1     2048     206847     204800  100M EFI System
/dev/sda2   206848    4401151    4194304    2G Linux filesystem
/dev/sda3  4401152 4294967262 4290566111    2T Linux LVM
```
